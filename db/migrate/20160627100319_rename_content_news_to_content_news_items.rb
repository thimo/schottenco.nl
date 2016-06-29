class RenameContentNewsToContentNewsItems < ActiveRecord::Migration[5.0]
  def change
    rename_table :content_news, :content_news_items
  end
end
