class User < ActiveRecord::Base
  has_many :connections, :foreign_key => "user_id", :class_name => "Connection"
 has_many :connects, :through => :connections

  before_save {self.email = email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: { minimum: 2}
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX}, uniqueness: true
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}, allow_nil: true
  validates :description, presence: true, length: { minimum: 10}, uniqueness: true


  	def  find_connection(user)
  		Connection.where(user: user, connection: self)[0]
    end 

    def find_connection_status(user)
    	Connection.where(user: user, connection: self, connected: true)[0]
    end
end
