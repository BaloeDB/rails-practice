require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "Test the presence validation by creating a user without a `username`." do
    assert_raises ( ActiveRecord::RecordInvalid ) {
      User.create!()
    }
  end

  test "Test the length validation with both valid and invalid usernames." do
    # Invalid username
    assert_raises ( ActiveRecord::RecordInvalid ) {
      invalid = User.create!(username: "aa")
    }

    # Valid username
    valid = User.create!(username: "aabb")
    assert_includes User.all, valid
  end

  test "Test the format validation with different email addresses." do
    # Invalid email format
    assert_raises ( ActiveRecord::RecordInvalid ) {
      invalid = User.create!(username: "abba", email: "abba.com")
    }

    # Valid email format
    valid = User.create!(username: "abba", email: "abba@gmail.com")
    assert_includes User.all, valid
  end

  test "Test the custom error messages by 
  triggering validation errors." do
    # Failed username presence validation
    begin
      User.create!()
    rescue => error
      assert_includes error.message, "Username cannot be blank"
    end

    # Failed username length validation
    begin
      User.create!(username: "aa")
    rescue => error
      assert_includes error.message, "Username must be between 3 and 20 characters long"
    end

    # Failed email format validation
    begin
      User.create!(username: "abba", email: "abba.com")
    rescue => error
      assert_includes error.message, "Email must be in format user@host.domain"
    end
  end

  test "Test various scenarios to ensure all validations work together." do
    # Invalid: username not unique
    User.create(username: "abba")
    begin
      User.create!(username: "abba")
    rescue => error
      assert_includes error.message, "Username must be unique"
    end

    # Invalid: username not correct length, username not present
    begin
      User.create!()
    rescue => error
      assert_includes error.message, "Username cannot be blank"
      assert_includes error.message, "Username must be between 3 and 20 characters long"
    end
  end
end
