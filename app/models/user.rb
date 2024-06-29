# Create a new model called `User` with an attribute `username`.
# Customize the error messages for the `User` model's validations (e.g., "Username cannot be blank").
class User < ApplicationRecord
    attribute :username
    attribute :email

    # Combine presence, length, and uniqueness validations for the `User` model's `username`.
    # Add a validation to ensure that the `username` is present.
    # Add a validation to ensure that the `username` is unique.
    # Add a validation to the `User` model to ensure that the `username` 
    # is between 3 and 20 characters long.
    validates :username, presence: { message: "Username cannot be blank" }, 
    length: { in: 3..20, message: "Username must be between 3 and 20 characters long" },
    uniqueness: { message: "Username must be unique" }
    # Add a validation to the `User` model to ensure that the `email` 
    # follows a valid email format.
    validates :email, format: { with: /\A\w+@\w+.\w+\z/,
    message: "Email must be in format user@host.domain" }, 
    unless: -> { email.nil? }
end
