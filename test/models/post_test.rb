require "test_helper"

class PostTest < ActiveSupport::TestCase
  setup do
    @peter_post = posts(:peter_post)
    @eduard_post = posts(:eduard_post)
    @eduard2_post = posts(:eduard2_post)
    @peter = users(:peter)
    @temp = users(:temp)
  end

  test "12. Test creation of `Post` model." do
    post = Post.create!(user: @temp, title: "Temp Post", content: "Content of temp post")
    assert_includes Post.all, post
  end

  test "13. Test migration adding `user_id` to `Post`." do
    assert_respond_to @peter_post, :user
  end

  test "14. Test `User`-`Post` association." do
    assert_equal @peter_post.user, @peter
    assert_equal @peter.posts.first, @peter_post
  end

  test "15. Test new `Post` creation with `User`." do
    post = Post.create!(user: @temp, title: "Temp Post", content: "Content of temp post")
    assert_includes Post.all, post
  end

  test "16. Test retrieval of `User`'s `Post`s." do
    assert_includes Post.all, @peter_post
    assert_includes Post.all, @eduard_post
  end

  test "17. Test `title` update for `User`'s `Post`." do
    old_title = @peter_post.title
    @peter_post.update(title: old_title + "*")
    assert_equal @peter_post.title, old_title + "*"
  end

  test "18. Test deletion of `User`'s `Post`." do
    Post.delete_by(id: @eduard2_post.id)
    assert_not_includes Post.all, @eduard2_post
  end

  test "19. Test `Post` scope for `title`." do
    posts = Post.contains_title("Post")
    assert_includes posts, @peter_post
    assert_includes posts, @eduard_post
    assert_includes posts, @eduard2_post
  end

  test "20. Test `Post` method for word count." do
    assert_equal @peter_post.word_count, @peter_post.content.split.size
  end

end
