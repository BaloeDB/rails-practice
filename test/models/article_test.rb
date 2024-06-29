require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "Test the uniqueness validation by creating articles 
  with duplicate titles." do
    Article.create!(title: "Article")
    assert_raises ( ActiveRecord::RecordInvalid ) {
      Article.create!(title: "Article")
    }

    Article.create!(title: "Post")
    assert_raises ( ActiveRecord::RecordInvalid ) {
      Article.create!(title: "Post")
    }
  end
end
