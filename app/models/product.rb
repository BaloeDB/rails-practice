require 'digest/sha1'

class Product < ApplicationRecord
    has_and_belongs_to_many :tags
    belongs_to :grouping, optional: true
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

    # Exercise 13: Define a `before_save` callback in the 
    # `Product` model to update the `updated_at` timestamp.
    before_save do
        self.updated_at = DateTime.current
    end

    # Exercise 14: Implement a `before_create` callback to 
    # generate a unique SKU for each product.
    # Changed it to before_save so that name is always related to sku.
    before_save do
        self.sku = Digest::SHA1.hexdigest(self.name)
    end

    # Exercise 15: Create a `after_destroy` 
    # callback to log deleted products.
    # Changed it to before_destroy so that we can still the product.
    before_destroy do
        Log.create!(content: "#{self.name} was deleted at #{Date.current}")
    end
end
