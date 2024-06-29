class RemovePasswordFromUser < ActiveRecord::Migration[7.1]
  def self.up
    remove_column :users, :password
  end

  def self.down
    add_column :users, :password, :string
  end
end
