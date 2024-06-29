# Create a new model called `User` with an attribute `username`.
class User < ApplicationRecord
    # Add a validation to ensure that the `username` is present.
    validates :username, presence: true
    # Add a validation to the `User` model to ensure that the `username` 
    # is between 3 and 20 characters long.
    validates :username, length: { in: 3..20 }
end
