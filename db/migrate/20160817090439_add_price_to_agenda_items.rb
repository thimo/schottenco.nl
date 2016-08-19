class AddPriceToAgendaItems < ActiveRecord::Migration[5.0]
  def change
    add_column :agenda_items, :price, :decimal, precision: 10, scale: 2
  end
end
