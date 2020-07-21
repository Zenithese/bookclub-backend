class CreateHighlights < ActiveRecord::Migration[5.2]
  def change
    create_table :highlights do |t|
      t.string :text, null: false
      t.string :cfi_range, null: false

      t.timestamps
    end
    add_index :highlights, :cfi_range
  end
end
