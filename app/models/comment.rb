class Comment < ApplicationRecord
    belongs_to :commentable, polymorphic: true
    has_many :comments, as: :commentable
    belongs_to :user,
        foreign_key: :user_id,
        class_name: :User
    # belongs_to :comment, -> { where(commentable_type: 'Comment') }, foreign_key: :commentable_id
end
