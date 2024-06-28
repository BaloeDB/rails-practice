namespace :post do
    desc "Create a new `Post` instance associated with a `User` instance."
    task create: [:environment] do
        print "Enter user id: "
        id = STDIN.gets.chomp.to_i

        puts "---User---"
        begin
            user = User.find_by(id: id)
            pp user
        rescue => error
            puts error.message
        end

        print "Enter title: "
        title = STDIN.gets.chomp
        print "Enter content: "
        content = STDIN.gets.chomp
  
        puts "---POST---"
        post = Post.create!(user: user, title: title, content: content)
        pp post
      end

    desc "Retrieve all `Post` instances associated with a `User` instance."
    task all: [:environment] do
        print "Enter user id: "
        id = STDIN.gets.chomp.to_i

        puts "---User---"
        begin
            user = User.find_by(id: id)
            pp user
        rescue => error
            puts error.message
        end
  
        puts "---POSTS---"
        pp user.posts
    end
end
