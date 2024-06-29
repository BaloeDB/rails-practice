# Create a new model called `User` with an attribute `username`.
class User < ApplicationRecord
    # Add a validation to ensure that the `username` is present.
    validates :username, presence: true
end
