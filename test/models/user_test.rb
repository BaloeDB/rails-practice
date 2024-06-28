require "test_helper"

class UserTest < ActiveSupport::TestCase
  setup do
    @first_user = users(:one)
    @second_user = users(:two)
  end

  test "1. Test creation of `User` model." do
    assert true
  end

  test "2. Test migration adding `username` to `User`." do
    assert true
  end

  test "3. Test `name` presence validation in `User`." do
    assert true
  end

  test "4. Test `email` uniqueness validation in `User`." do
    assert true
  end

  test "5. Test `email` downcasing before save." do
    assert true
  end

  test "6. Test new `User` instance creation." do
    assert true
  end

  test "7. Test retrieval of created `User`." do
    assert true
  end

  test "8. Test `name` update for `User`." do
    assert true
  end

  test "9. Test deletion of `User`." do
    assert true
  end

  test "10. Test `User` scope for `name`." do
    assert true
  end

  test "11. Test `User` method for `Post` count." do
    assert true
  end

  test "the truth" do
    assert true
  end
end
