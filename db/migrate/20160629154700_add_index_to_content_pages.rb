class AddIndexToContentPages < ActiveRecord::Migration[5.0]
  def change
    add_index :content_pages, :url, unique: true
  end
end
