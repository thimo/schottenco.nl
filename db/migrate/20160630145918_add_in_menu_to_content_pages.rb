class AddInMenuToContentPages < ActiveRecord::Migration[5.0]
  def change
    add_column :content_pages, :in_menu, :boolean, default: true
  end
end
