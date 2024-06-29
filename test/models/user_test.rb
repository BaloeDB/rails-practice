require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "Test the presence validation by creating a user without a `username`." do
    assert_raises ( ActiveRecord::RecordInvalid ) {
      User.create!()
    }
  end

  test "Test the length validation with both valid and invalid usernames." do
    # Invalid usernames
    assert_raises ( ActiveRecord::RecordInvalid ) {
      User.create!(username: "aa")
    }
    assert_raises ( ActiveRecord::RecordInvalid ) {
      User.create!(username: "aabbccddeeffgghhiijjkkllmm")
    }

    # Valid usernames
    user1 = User.create!(username: "aabb")
    user2 = User.create!(username: "aabbccddeeff")
    assert_includes User.all, user1
    assert_includes User.all, user2
  end
end
