class ContentBlog < ApplicationRecord
  has_many :content_images, as: :imageable
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates_presence_of :published_at, :title, :body

  scope :desc, -> {order(published_at: :desc)}

  def create_version(version)
    image.now.recreate_versions!(version)
  end
end
