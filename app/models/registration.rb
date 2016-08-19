class Registration < ApplicationRecord
  belongs_to :agenda_item
  belongs_to :user

  attr_accessor :accepts

  validates_presence_of :name, :email, :address, :phone, :zip, :city, :country, :agenda_item_id, :accepts

end
