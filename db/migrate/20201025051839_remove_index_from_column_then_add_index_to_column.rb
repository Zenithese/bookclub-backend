class RemoveIndexFromColumnThenAddIndexToColumn < ActiveRecord::Migration[6.0]
  def change
    remove_index :follows, :user_id
    remove_index :follows, :follow_id
    add_index :follows, [:user_id, :follow_id], unique: true
  end
end
