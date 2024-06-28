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
end
