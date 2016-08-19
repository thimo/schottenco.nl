class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.references :agenda_item, foreign_key: true
      t.references :user, foreign_key: true
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.string :zip
      t.string :city
      t.string :country
      t.datetime :paid_for_at
      t.datetime :invoice_sent_at

      t.timestamps
    end
  end
end
