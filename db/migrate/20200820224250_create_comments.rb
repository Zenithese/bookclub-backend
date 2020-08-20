class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :commentable_type, null:false
      t.integer :commentable_id, null:false
      t.text :body
      t.integer :user_id, null:false

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, [:commentable_id, :commentable_type]
  end
end
