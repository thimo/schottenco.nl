class ContentPage < ApplicationRecord
  has_many :content_images, as: :imageable
  has_many :agenda_items

  validates_presence_of :url, :title, :body

  enum menu_type: {menu_hidden: 0, menu_visible: 1}

  scope :asc, -> {order(url: :asc)}
end
