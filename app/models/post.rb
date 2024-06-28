class Post < ApplicationRecord
    # RELATIONS
    belongs_to :user

    # VALIDATIONS
    validates :title, :content, presence: true 
    validates :title, :content, uniqueness: true

    # SCOPES
    # retrieve all posts with a specific `title`.
    scope :contains_title, -> (title) { where("title LIKE ?",
    sanitize_sql_like(title) + "%") }
end
