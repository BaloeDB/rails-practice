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

    desc "Retrieve the `User` instance you just created from the database."
    task find: [:environment] do
        print "Find by email or id: "
        case STDIN.gets.chomp.downcase
        when "email"
            print "Enter email: "
            email = STDIN.gets.chomp.downcase
            begin
                pp User.find_by(email: email)
            rescue => error
                puts error.message
            end
        when "id"
            print "Enter id: "
            id = STDIN.gets.chomp.to_i
            begin
                pp User.find_by(id: id)
            rescue => error
                puts error.message
            end
        else
            puts "Incorrect filter"
        end
    end
end
