class AddBirthDateToUser < ActiveRecord::Migration[7.1]
  def self.up
    add_column :users, :birthdate, :datetime
  end

  def self.down
    remove_column :users, :birthdate
  end
end
