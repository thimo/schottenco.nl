class ContentPage < ApplicationRecord
  has_many :content_images, as: :imageable
  has_many :agenda_items
  mount_uploader :image, ImageUploader

  validates_presence_of :url, :title, :body

  enum menu_type: {menu_hidden: 0, menu_visible: 1}

  scope :asc, -> {order(url: :asc)}

  def title_for_menu
    self.menu_title.blank? ? self.title : self.menu_title
  end

  def top_level_path
    self.url.split("/")[0]
  end

  def create_version(version)
    image.now.recreate_versions!(version)
  end
end
