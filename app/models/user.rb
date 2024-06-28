class User < ApplicationRecord
    validates :name, :username, :email, presence: true 
end
