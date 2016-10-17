class ContentText < ApplicationRecord
  has_many :content_images, as: :imageable

  validates_presence_of :name, :body

  scope :asc, -> {order(name: :asc)}
end
