class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :bookings
  has_many :blogs
  has_many :email_logs, dependent: :destroy

  validates_presence_of :name, :first_name, :last_name, :email

  enum user_type: {customer: 0, admin: 1}
  enum gender: {male: 0, female: 1, other: 2}

  scope :asc, -> {order(first_name: :asc)}

  def name
    "#{first_name} #{middle_name} #{last_name}".squish
  end

  # Setter
  def name=(name)
    split = name.split(' ', 2)
    self.first_name = split.first
    self.last_name = split.last
  end

  def email_with_name
    %("#{self.name}" <#{self.email}>)
  end

  def self.create_from_booking(booking)
    generated_password = Devise.friendly_token.first(8)
    user = User.create!(
        email: booking.email,
        name: booking.name,
        password: generated_password,
        phone: booking.phone,
        address: booking.address,
        zip: booking.zip,
        city: booking.city,
        country: booking.country
      )

    UserMailer.new_account_notification(user, generated_password).deliver_now

    user
  end

end
