class CreateAgendaItems < ActiveRecord::Migration[5.0]
  def change
    create_table :agenda_items do |t|
      t.date :starts_at
      t.date :ends_at
      t.string :title
      t.text :intro
      t.text :body
      t.string :external_url
      t.integer :registration_type, default: 0
      t.references :content_page, foreign_key: true

      t.timestamps
    end

    add_index :agenda_items, :starts_at
  end
end
