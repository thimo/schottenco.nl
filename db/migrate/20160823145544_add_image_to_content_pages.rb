class AddImageToContentPages < ActiveRecord::Migration[5.0]
  def change
    add_column :content_pages, :image, :string
  end
end
