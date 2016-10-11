class AgendaItem < ApplicationRecord
  belongs_to :content_page
  belongs_to :location
  has_many :bookings
  mount_uploader :image, ImageUploader

  validates_presence_of :starts_at, :title, :body, :booking_type

  scope :asc, -> {order(starts_at: :asc)}
  scope :desc, -> {order(starts_at: :desc)}
  scope :up_next, -> {order(starts_at: :asc).where(starts_at: 1.day.ago..1.year.from_now) }

  enum booking_type: {booking_disabled: 0, booking_internal: 1, booking_external: 2}

  def create_version(version)
    image.now.recreate_versions!(version)
  end
end
