# Create a new model called `Article` with an attribute `title`.
class Article < ApplicationRecord
    # Add a validation to ensure that the `title` 
    # is unique across all articles.
    validates :title, uniqueness: true

    # Add a custom validation method to the `Article` model that checks 
    # if the `published_date` is in the future.
    attribute :published_date, :date, default: -> { Date.today }
    validate :published_date_cannot_be_in_the_future
    def published_date_cannot_be_in_the_future
        if published_date.future?
          errors.add(:published_date, "can't be in the future")
        end
    end
end
