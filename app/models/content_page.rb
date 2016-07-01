class ContentPage < ApplicationRecord
  validates_presence_of :url, :title, :body

  enum menu_type: {menu_hidden: 0, menu_visible: 1}
end
