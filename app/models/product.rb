# Create a `Product` model with an attribute `price`.
class Product < ApplicationRecord
    attribute :price
    # Add a validation to ensure that the `price` is a positive number.
    validates :price, presence: { message: "Product must have a price" }
    validates :price, numericality: { greater_than: 0 }

    # Extend the `Product` model to include a `category` attribute (e.g., "Electronics," "Clothing").
    attribute :category
    # Get the list of categories
    def self.categories()
        return %w(Electronics Household Health Beauty Clothing)
    end
    # Add a validation to ensure that the `category` is one of the predefined options.
    # Electronics, Household, Health, Beauty, Clothing
    validates :category, inclusion: { in: self.categories(),
    message: "%{value} is not a valid category" }, unless: -> { category.blank? }
end
