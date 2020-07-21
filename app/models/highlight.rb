class Highlight < ApplicationRecord
    validates :text, :cfi_range, presence: true
    
    belongs_to :user,
        foreign_key: :user_id,
        class_name: :User

    belongs_to :book,
        foreign_key: :book_id,
        class_name: :Book
end