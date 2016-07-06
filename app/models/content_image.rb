class ContentImage < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :imageable, polymorphic: true

  validates_presence_of :name, :image
end
