class AgendaItem < ApplicationRecord
  belongs_to :content_page
  belongs_to :location

  validates_presence_of :starts_at, :title, :body, :registration_type

  scope :asc, -> {order(starts_at: :asc)}
  scope :desc, -> {order(starts_at: :desc)}
  scope :up_next, -> {order(starts_at: :asc).where(starts_at: 1.day.ago..1.year.from_now).limit(3) }

  enum registration_type: {disabled: 0, internal: 1, external: 2}
end
