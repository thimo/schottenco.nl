class AgendaItem < ApplicationRecord
  belongs_to :content_page
  belongs_to :location
  has_many :bookings
  has_many :content_images, as: :imageable
  mount_uploader :image, ImageUploader

  validates_presence_of :starts_at, :title, :body, :booking_type

  scope :asc, -> {order(starts_at: :asc)}
  scope :desc, -> {order(starts_at: :desc)}
  scope :up_next, -> {order(starts_at: :asc).where('starts_at >= ?', Date.today) }
  scope :current, -> {order(starts_at: :asc).where('starts_at <= ?', Date.today).where('ends_at >= ?', Date.today) }
  scope :past, -> {order(starts_at: :asc).where('ends_at < ?', Date.today) }

  enum booking_type: {booking_disabled: 0, booking_internal: 1, booking_external: 2}

  def create_version(version)
    image.now.recreate_versions!(version)
  end
end
