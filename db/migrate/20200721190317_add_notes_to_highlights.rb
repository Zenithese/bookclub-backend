class AddNotesToHighlights < ActiveRecord::Migration[6.0]
  def change
    add_column :highlights, :notes, :string
    add_index :highlights, :notes
  end
end
