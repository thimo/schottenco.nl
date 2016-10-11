class AddPolymorphicRelationToContentImages < ActiveRecord::Migration[5.0]
  def change
    add_column :content_images, :imageable_id, :integer
    add_column :content_images, :imageable_type, :string

    add_index :content_images, [:imageable_type, :imageable_id]
  end
end
