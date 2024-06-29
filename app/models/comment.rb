# Create a `Comment` model that belongs to an `Article`
class Comment < ApplicationRecord
  attribute :content
  belongs_to :article

  # Add a validation to ensure that the comment's content is present.
  validates :content, presence: true
end
