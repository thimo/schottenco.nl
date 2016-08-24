class UserMailer < ApplicationMailer

  def registration_confirmation(registration)
    @registration = registration
    mail to: registration.email_with_name, subject: "Bevestiging aanmelding"
  end

end
