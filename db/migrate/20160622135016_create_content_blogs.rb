class CreateContentBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :content_blogs do |t|
      t.datetime :published_at
      t.string :title
      t.text :intro
      t.text :body

      t.timestamps
    end
  end
end
