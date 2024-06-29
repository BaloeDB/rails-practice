class AddInitialRoles < ActiveRecord::Migration[7.1]
  def up
    5.times do |i|
      Role.create(name: "Role#{i}", permissions: "Permission#{i}")
    end
  end

  def down
    Role.delete_all
  end
end
