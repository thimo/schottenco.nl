class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates_presence_of :first_name, :last_name, :email

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
    self.last_name = split.second
  end

  def email_with_name
    %("#{self.name}" <#{self.email}>)
  end

end
