require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "Test the uniqueness validation by creating articles 
  with duplicate titles." do
    Article.create!(title: "Article")
    assert_raises ( ActiveRecord::RecordInvalid ) {
      Article.create!(title: "Article")
    }
  end

  test "Test the custom validation by 
  creating an article with a future date." do
    assert_raises ( ActiveRecord::RecordInvalid ) {
      Article.create!(title: "My Article", published_date: Date.current.next_day)
    }
  end
end
