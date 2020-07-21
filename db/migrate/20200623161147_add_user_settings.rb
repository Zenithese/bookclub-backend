class AddUserSettings < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :font_size, :string
    add_column :users, :highlight_color, :string
    add_column :users, :theme, :string
  end
end
