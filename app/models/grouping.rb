# Exercise 17: Set up a one-to-many association 
# between `Grouping` and `Product` models.
class Grouping < ApplicationRecord
    has_many :products
end
