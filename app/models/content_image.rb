class ContentImage < ApplicationRecord
  mount_uploader :image, ImageUploader
end
