class AddIndexToEmailOfUsers < ActiveRecord::Migration[7.1]
  def self.up
    add_index :users, :email
  end

  def self.down
    remove_index :users, :email
  end
end
