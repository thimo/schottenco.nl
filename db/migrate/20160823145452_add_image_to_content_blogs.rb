class AddImageToContentBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :content_blogs, :image, :string
  end
end
