class AddTimestampsToRolesUsers < ActiveRecord::Migration[7.1]
  def up
    add_timestamps :roles_users
  end

  def down
    remove_timestamps :roles_users
  end
end
