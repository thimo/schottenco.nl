class SetDefaultForMenuTypeToContentPages < ActiveRecord::Migration[5.0]
  def change
    change_column :content_pages, :menu_type, :integer, default: 1
  end
end
