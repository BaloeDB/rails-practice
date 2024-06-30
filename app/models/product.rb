class Product < ApplicationRecord
    belongs_to :category, optional: true

    # Exercise 3: Implement a scope in the `Product` model 
    # to retrieve all products with prices greater than $50.
    scope :costs_more_than_50, -> { where("price > 50") }

    # Exercise 9: Add validation to the `Product` model to 
    # ensure that the `name` field is present.
    validates :name, presence: true

    # Exercise 10: Implement a custom validation to check 
    # if the `price` is a positive number.
    validates :price, numericality: { greater_than: 0 }
end
