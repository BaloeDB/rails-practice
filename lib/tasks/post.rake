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

    desc "Update the `title` attribute of a `Post` instance associated with a `User` instance."
    task update: [:environment] do
        print "Enter user id: "
        id = STDIN.gets.chomp.to_i

        puts "---User---"
        begin
            user = User.find_by(id: id)
            pp user
        rescue => error
            puts error.message
        end

        print "Enter post id: "
        id = STDIN.gets.chomp.to_i

        puts "---Current Post---"
        begin
            post = user.posts.find_by(id: id)
            pp post
        rescue => error
            puts error.message
        end

        print "Enter title: "
        title = STDIN.gets.chomp
        print "Enter content: "
        content = STDIN.gets.chomp
  
        puts "---Updated Post---"
        post.update(user: user, title: title, content: content)
        pp post
    end

    desc "Delete a `Post` instance associated with a `User` instance."
    task delete: [:environment] do
        print "Enter user id: "
        id = STDIN.gets.chomp.to_i

        puts "---User---"
        begin
            user = User.find_by(id: id)
            pp user
        rescue => error
            puts error.message
        end

        print "Enter post id: "
        id = STDIN.gets.chomp.to_i

        puts "---Post to delete---"
        begin
            post = user.posts.find_by(id: id)
            pp post
        rescue => error
            puts error.message
        end
  
        puts "---Updated posts---"
        pp user.posts
    end
end
