class AddImageToAgendaItems < ActiveRecord::Migration[5.0]
  def change
    add_column :agenda_items, :image, :string
  end
end
