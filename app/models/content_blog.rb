class ContentBlog < ApplicationRecord
  has_many :content_images, as: :imageable

  validates_presence_of :published_at, :title, :body

  default_scope {order(published_at: :desc)}
end
