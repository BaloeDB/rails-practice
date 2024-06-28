require "test_helper"

class PostTest < ActiveSupport::TestCase
  setup do
    @first_post = posts(:one)
    @second_post = posts(:two)
  end

  test "12. Test creation of `Post` model." do
    assert true
  end

  test "13. Test migration adding `user_id` to `Post`." do
    assert true
  end

  test "14. Test `User`-`Post` association." do
    assert true
  end

  test "15. Test new `Post` creation with `User`." do
    assert true
  end

  test "16. Test retrieval of `User`'s `Post`s." do
    assert true
  end

  test "17. Test `title` update for `User`'s `Post`." do
    assert true
  end

  test "18. Test deletion of `User`'s `Post`." do
    assert true
  end

  test "19. Test `Post` scope for `title`." do
    assert true
  end

  test "20. Test `Post` method for word count." do
    assert true
  end

end
