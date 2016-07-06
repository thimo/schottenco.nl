class ContentPage < ApplicationRecord
  has_many :content_images, as: :imageable

  validates_presence_of :url, :title, :body

  enum menu_type: {menu_hidden: 0, menu_visible: 1}

  default_scope {order(url: :asc)}
end
