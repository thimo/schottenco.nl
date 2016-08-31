class Booking < ApplicationRecord
  belongs_to :agenda_item
  belongs_to :user

  attr_accessor :general_terms

  validates_presence_of :name, :email, :address, :phone, :zip, :city, :country, :agenda_item_id
  validates_acceptance_of :general_terms

  def email_with_name
    %("#{self.name}" <#{self.email}>)
  end

  def send_confirmation_email
    UserMailer.booking_confirmation(self).deliver_now
  end

  def send_admin_notification_email
    AdminMailer.booking_notification(self).deliver_now
  end

end
