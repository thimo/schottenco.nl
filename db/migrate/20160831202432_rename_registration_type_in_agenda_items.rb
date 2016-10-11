class RenameRegistrationTypeInAgendaItems < ActiveRecord::Migration[5.0]
  def change
    rename_column :agenda_items, :registration_type, :booking_type
  end
end
