# Create a `Product` model with an attribute `price`.
class Product < ApplicationRecord
    attribute :price

    # Add a validation to ensure that the `price` is a positive number.
    validates :price, numericality: { greater_than: 0 }
end
