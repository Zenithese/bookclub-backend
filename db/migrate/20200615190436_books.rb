class Books < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :location, null: false
      t.string :image
      
      t.timestamps
    end
    add_index :books, :title, unique: true
  end
end
