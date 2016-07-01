class AddMenuTypeToContentPages < ActiveRecord::Migration[5.0]
  def change
    add_column :content_pages, :menu_type, :integer
    remove_column :content_pages, :in_menu
  end
end
