class AddEpubToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :epub_file, :string
  end
end
