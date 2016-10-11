class AddLocationsToAgendaItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :agenda_items, :location, index: true, foreign_key: true
  end
end
