class UserMailer < ApplicationMailer

  def booking_confirmation(booking)
    @booking = booking
    mail to: @booking.email_with_name, subject: "Bevestiging aanmelding"
  end

  def new_account_notification(user, generated_password)
    @user = user
    @generated_password = generated_password
    mail to: @user.email_with_name, subject: "Account aangemaakt"
  end
end
