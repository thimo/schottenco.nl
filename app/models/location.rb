class Location < ApplicationRecord
  has_many :agenda_items

  validates_presence_of :name, :address, :city

  scope :asc, -> {order(name: :asc)}
end
