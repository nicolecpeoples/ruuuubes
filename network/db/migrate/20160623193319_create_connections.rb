class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.references :user, index: true, foreign_key: true
      t.references :connection, index: true, foreign_key: true
      t.boolean :connected

      t.timestamps null: false
    end
  end
end
