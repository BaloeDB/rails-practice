class User < ApplicationRecord
    # RELATIONS
    has_many :posts

    # VALIDATIONS
    validates :name, :username, :email, presence: true 
    validates :name, :username, :email, uniqueness: true

    # CALLBACKS
    before_save -> (user) { 
        user.email = user.email.downcase 
    }

    # SCOPES
    # retrieve all users with a specific `name`.
    scope :contains_name, -> (name) { where("name LIKE ?",
    sanitize_sql_like(name) + "%")
   }
end
