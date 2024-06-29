require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "Test the uniqueness validation by creating articles 
  with duplicate titles." do
    # Valid: unique title
    Article.create!(title: "Article")
    # Invalid: duplicate title
    assert_raises ( ActiveRecord::RecordInvalid ) {
      Article.create!(title: "Article")
    }
  end

  test "Test the custom validation by 
  creating an article with a future date." do
    # Invalid: published, but published_date is in future
    assert_raises ( ActiveRecord::RecordInvalid ) {
      Article.create!(title: "My Article", published: true, published_date: Date.current.next_day)
    }
  end

  test "Test the conditional validation by toggling 
  the `published` attribute." do
    # Invalid: published, but no published_date
    assert_raises ( ActiveRecord::RecordInvalid ) {
      Article.create!(title: "Published", published: true)    
    }

    # Invalid: published_date, but not published
    assert_raises ( ActiveRecord::RecordInvalid ) {
      Article.create!(title: "Published", published_date: Date.current)    
    }

    # Valid: published & published_date
    published = Article.create!(title: "Published", published_date: Date.current, 
    published: true)
    assert_includes Article.all, published
    # Valid: not published & no published_date
    draft = Article.create!(title: "Draft")
    assert_includes Article.all, draft
  end
end
