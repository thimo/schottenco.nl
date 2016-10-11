class ContentImage < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :imageable, polymorphic: true

  validates_presence_of :name, :image

  scope :asc, -> {order(name: :asc)}

  def create_version(version)
    image.now.recreate_versions!(version)
  end
end
