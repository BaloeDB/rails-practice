class CreateRoles < ActiveRecord::Migration[7.1]
  def self.up
    create_table :roles do |t|
      t.string :name
      t.string :permissions

      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end
