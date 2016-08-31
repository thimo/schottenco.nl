class RenameRegistrationsToBookings < ActiveRecord::Migration[5.0]
  def change
    rename_table :registrations, :bookings
  end
end
