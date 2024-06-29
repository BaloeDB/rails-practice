class ChangeBirthdateTypeOfUser < ActiveRecord::Migration[7.1]
  def self.up
    change_column :users, :birthdate, :date
  end

  def self.down
    change_column :users, :birthdate, :datetime
  end
end
