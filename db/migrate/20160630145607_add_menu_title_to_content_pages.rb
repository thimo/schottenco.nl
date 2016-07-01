class AddMenuTitleToContentPages < ActiveRecord::Migration[5.0]
  def change
    add_column :content_pages, :menu_title, :string
  end
end
