class User < ApplicationRecord
    validates :name, :username, :email, presence: true 
    validates :name, :username, :email, uniqueness: true
end
