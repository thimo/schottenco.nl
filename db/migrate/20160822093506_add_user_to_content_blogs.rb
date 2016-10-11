class AddUserToContentBlogs < ActiveRecord::Migration[5.0]
  def change
    add_reference :content_blogs, :user, foreign_key: true
  end
end
