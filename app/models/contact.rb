class Contact < ApplicationRecord
  validates_presence_of :name, :message

  scope :desc, -> {order(created_at: :desc)}

  def send_admin_contact_email
    AdminMailer.contact_email(self).deliver_now
  end
end
