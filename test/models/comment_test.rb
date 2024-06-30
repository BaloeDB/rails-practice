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

  test "Test the scoped validation by creating duplicate comments within the same article." do
    # Valid: unique comment on first article
    comment = Comment.create!(article: Article.first, content: "This is a comment")
    assert_includes Comment.all, comment
    
    # Invalid: duplicate comment on first article
    assert_raises ( ActiveRecord::RecordInvalid ) {
      Comment.create!(article: Article.first, content: "This is a comment")  
    }

    # Valid: unique comment on second article
    comment = Comment.create!(article: Article.second, content: "This is a comment")
    assert_includes Comment.all, comment
  end
end
