class AddUsernameToUser < ActiveRecord::Migration[7.1]
  def self.up
    add_column :users, :username, :string
  end
  
  def self.down
    remove_column :users, :username
  end
end
