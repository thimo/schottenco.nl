class CreateContentImages < ActiveRecord::Migration[5.0]
  def change
    create_table :content_images do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
