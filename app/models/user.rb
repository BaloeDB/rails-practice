# Create a new model called `User` with an attribute `username`.
# Customize the error messages for the `User` model's validations (e.g., "Username cannot be blank").
class User < ApplicationRecord
    attribute :username
    attribute :email

    # Add a validation to ensure that the `username` is present.
    validates :username, presence: { message: "Username cannot be blank" }
    # Add a validation to the `User` model to ensure that the `username` 
    # is between 3 and 20 characters long.
    validates :username, length: { in: 3..20, message: "Username must be between 3 and 20 characters long" }
    # Add a validation to the `User` model to ensure that the `email` 
    # follows a valid email format.
    validates :email, format: { with: /\A\w+@\w+.\w+\z/,
    message: "Email must be in format user@host.domain" }, 
    unless: -> { email.nil? }
end
