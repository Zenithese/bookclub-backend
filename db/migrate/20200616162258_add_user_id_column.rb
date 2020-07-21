class AddUserIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :user_id, :integer
    add_index :books, :user_id
    add_column :highlights, :user_id, :integer
    add_index :highlights, :user_id
    add_column :highlights, :book_id, :integer
    add_index :highlights, :book_id
  end
end
