# Added models so that I can interact with console
# They are not neccessarily needed to work with migrations
class User < ApplicationRecord
    has_and_belongs_to_many :roles
end