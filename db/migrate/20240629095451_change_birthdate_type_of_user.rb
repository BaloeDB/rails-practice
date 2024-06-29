class ChangeBirthdateTypeOfUser < ActiveRecord::Migration[7.1]
  def self.up
    remove_column :users, :birthdate
    add_column :users, :birthdate, :date
  end

  def self.down
    remove_column :users, :birthdate
    add_column :users, :birthdate, :datetime
  end
end
