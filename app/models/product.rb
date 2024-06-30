class Product < ApplicationRecord
    belongs_to :category, optional: true

    # Exercise 3: Implement a scope in the `Product` model 
    # to retrieve all products with prices greater than $50.
    scope :costs_more_than_50, -> { where("price > 50") }
end
