class AddOrderToContentPages < ActiveRecord::Migration[5.0]
  def change
    add_column :content_pages, :order, :integer
  end
end
