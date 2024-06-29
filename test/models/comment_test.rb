require "test_helper"

class CommentTest < ActiveSupport::TestCase
  test "Test the presence validation by creating comments without content." do
    # Invalid: has no content
    assert_raises ( ActiveRecord::RecordInvalid ) {
      Comment.create!(article: Article.first)   
    }

    # Invalid: does not reference article
    assert_raises ( ActiveRecord::RecordInvalid ) {
      Comment.create!(content: "This is a comment")   
    }

    # Valid: references article and has content
    comment = Comment.create!(article: Article.first, content: "This is a comment")
    assert_includes Comment.all, comment
  end
end
