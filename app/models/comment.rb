class Comment < ApplicationRecord
    belongs_to :commentable, polymorphic: true
    has_many :comments, as: :commentable
    belongs_to :user,
        foreign_key: :user_id,
        class_name: :User
end
