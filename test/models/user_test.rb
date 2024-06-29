require "test_helper"

class UserTest < ActiveSupport::TestCase
  setup do
    @peter = users(:peter)
    @eduard = users(:eduard)
    @eduard2 = users(:eduard2)
    @to_delete = users(:delete)
  end

  test "1. Test creation of `User` model." do
    user = User.create!(name: "Test user", username: "TestUser", email: "user@test.com")
    assert_includes User.all, user
  end

  test "2. Test migration adding `username` to `User`." do
    assert_respond_to @peter, :username
  end

  test "3. Test `name` presence validation in `User`." do
    assert_raises ( ActiveRecord::RecordInvalid ) {
      User.create!(username: "username", email: "email@gmail.com")
    }
  end

  test "4. Test `email` uniqueness validation in `User`." do
    assert_raises ( ActiveRecord::RecordInvalid ) {
      User.create!(name: "bla", username: "bla", email: @peter.email )
    }
  end

  test "5. Test `email` downcasing before save." do
    user = User.create!(name: "Test user", username: "TestUser", email: "user@test.com")
    assert_equal user.email, user.email.downcase
  end

  test "6. Test new `User` instance creation." do
    user = User.create!(name: "Test user", username: "TestUser", email: "user@test.com")
    assert_includes User.all, user
  end

  test "7. Test retrieval of created `User`." do
    user = User.find_by(id: @peter.id)
    assert_equal user, @peter
  end

  test "8. Test `name` update for `User`." do
    old_name = @peter.name
    @peter.update(name: old_name + "*")
    assert_equal @peter.name, old_name + "*"
  end

  test "9. Test deletion of `User`." do
    User.delete_by(id: @to_delete.id)
    assert_not_includes User.all, @to_delete
  end

  test "10. Test `User` scope for `name`." do
    users = User.contains_name("Eduard")
    assert_includes users, @eduard
    assert_includes users, @eduard2
  end

  test "11. Test `User` method for `Post` count." do
    assert_equal @peter.post_count, @peter.posts.length
  end
end
