require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "Test the validation by creating a user without a `username`." do
    assert_raises ( ActiveRecord::RecordInvalid ) {
      User.create!()
    }
  end
end
