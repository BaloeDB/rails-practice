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
end
