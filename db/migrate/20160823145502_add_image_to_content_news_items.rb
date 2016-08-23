class AddImageToContentNewsItems < ActiveRecord::Migration[5.0]
  def change
    add_column :content_news_items, :image, :string
  end
end
