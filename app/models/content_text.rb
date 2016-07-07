class ContentText < ApplicationRecord
  validates_presence_of :name, :body

  scope :asc, -> {order(name: :asc)}
end
