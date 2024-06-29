class AddInitialUsers < ActiveRecord::Migration[7.1]
  def up
    5.times do |i|
      User.create(name: "User#{i}", email: "user#{i}@gmail.com", birthdate: Date.current)
    end
  end

  def down
    User.delete_all
  end
end
