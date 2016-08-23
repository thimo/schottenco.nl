class ContentNewsItem < ApplicationRecord
  has_many :content_images, as: :imageable
  mount_uploader :image, ImageUploader

  validates_presence_of :published_at, :title, :body

  scope :desc, -> {order(published_at: :desc)}
end
