class ConnectionsController < ApplicationController
	before_action :set_connection, only: [:update]

	def create
		@connection = Connection.create(user: current_user, connection: User.find(params[:connect][:user_id]), connected: false)	
		redirect_to users_url
	end

	def update
		@connection.update_attributes(connected: true)
		redirect_to professional_profile_path
	end

	def destroy
		@connection = Connection.find(params[:id])
		@connection.destroy
		redirect_to professional_profile_path
	end

	private
		def set_connection
			@connection = Connection.find(params[:connect][:id])
		end
end
