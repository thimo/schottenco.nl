class Registration < ApplicationRecord
  belongs_to :agenda_item
  belongs_to :user

  attr_accessor :accepts

  validates_presence_of :name, :email, :address, :phone, :zip, :city, :country, :agenda_item_id, :accepts

  def email_with_name
    %("#{self.name}" <#{self.email}>)
  end

  def send_confirmation_email
    UserMailer.registration_confirmation(self).deliver_now
  end

  def send_admin_notification_email
    AdminMailer.registration_notification(self).deliver_now
  end

end
