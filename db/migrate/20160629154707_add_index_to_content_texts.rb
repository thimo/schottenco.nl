class AddIndexToContentTexts < ActiveRecord::Migration[5.0]
  def change
    add_index :content_texts, :name, unique: true
  end
end
