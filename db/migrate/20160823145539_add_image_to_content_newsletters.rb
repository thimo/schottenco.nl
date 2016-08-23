class AddImageToContentNewsletters < ActiveRecord::Migration[5.0]
  def change
    add_column :content_newsletters, :image, :string
  end
end
