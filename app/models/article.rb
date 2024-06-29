# Create a new model called `Article` with an attribute `title`.
class Article < ApplicationRecord
    attribute :title
    attribute :published_date
    # Extend the `Article` model to include an attribute `published`.
    attribute :published

    # Add a validation to ensure that the `title` 
    # is unique across all articles.
    validates :title, uniqueness: true

    # Add a validation to ensure that the `published_date` is present only 
    # if the article is marked as published.
    validate :published_date_present_only_if_published
    def published_date_present_only_if_published
        if published && published_date.nil?
            errors.add(:published_date, " is missing.")
        end

        if !published && published_date.present?
            errors.add(:published_date, " is not allowed.")
        end
    end

    # Add a custom validation method to the `Article` model that checks 
    # if the `published_date` is in the future.
    validate :published_date_cannot_be_in_the_future
    def published_date_cannot_be_in_the_future
        if published_date.present? && published_date.future?
          errors.add(:published_date, "can't be in the future")
        end
    end
end
