# Create a `Comment` model that belongs to an `Article`
class Comment < ApplicationRecord
  attribute :content
  belongs_to :article

  # Add a validation to ensure that the comment's content is present.
  validates :content, presence: true

  # Add a validation to the `Comment` model to ensure 
  # that comments are unique within an article.
  validates :content, uniqueness: { scope: :article,
  message: "comments should be unique within an article" }
end
