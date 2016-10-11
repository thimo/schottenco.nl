class AdminMailer < ApplicationMailer

  def booking_notification(booking)
    @booking = booking
    mail to: I18n.t("company.email"), subject: "Aanmelding voor #{@booking.agenda_item.title}"
  end

  def contact_email(contact)
    @contact = contact
    mail to: I18n.t("company.email"), subject: "Aanvraag via contactformulier"
  end
end
