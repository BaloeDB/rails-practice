class AssociateUserAndRoles < ActiveRecord::Migration[7.1]
  def self.up
    create_join_table :users, :roles do |t|
      t.index [:user_id, :role_id], unique: true
    end    
  end

  def self.down
    drop_join_table :users, :roles
  end
end
