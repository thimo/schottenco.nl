class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :zip
      t.string :city
      t.string :phone

      t.timestamps
    end
  end
end
