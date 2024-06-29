class ChangeNameToFullNameOfUsers < ActiveRecord::Migration[7.1]
  def self.up
    rename_column :users, :name, :full_name
  end

  def self.down
    rename_column :users, :full_name, :name
  end
end
