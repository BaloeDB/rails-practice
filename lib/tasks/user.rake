require "pp"
namespace :user do
    desc "Create a new `User` instance and save it to the database."
    task create: [:environment] do
      print "Enter name: "
      name = STDIN.gets.chomp
      print "Enter username: "
      username = STDIN.gets.chomp
      print "Enter email: "
      email = STDIN.gets.chomp

      user = User.create!(name: name, username: username, email: email)
      pp user
    end
end
