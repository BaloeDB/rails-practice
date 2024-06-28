class Post < ApplicationRecord
    # RELATIONS
    belongs_to :user

    # VALIDATIONS
    validates :title, :content, presence: true 
    validates :title, :content, uniqueness: true
end
