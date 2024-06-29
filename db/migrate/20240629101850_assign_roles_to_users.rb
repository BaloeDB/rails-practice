class AssignRolesToUsers < ActiveRecord::Migration[7.1]
  def up
    5.times do |i|
      role = Role.find_by(id: Role.first.id + i)
      user = User.find_by(id: User.first.id + i)
      user.roles << role
    end
  end

  def down
    5.times do |i|
      role = Role.find_by(id: Role.first.id + i)
      user = User.find_by(id: User.first.id + i)
      user.roles.delete(role)
    end
  end
end
