# Create a new model called `Article` with an attribute `title`.
class Article < ApplicationRecord
    # Add a validation to ensure that the `title` 
    # is unique across all articles.
    validates :title, uniqueness: true
end
