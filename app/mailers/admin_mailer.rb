class AdminMailer < ApplicationMailer

  def registration_notification(registration)
    @registration = registration
    mail to: I18n.t("company.email"), subject: "Aanmelding voor #{@registration.agenda_item.title}"
  end

  def contact_email(contact)
    @contact = contact
    mail to: I18n.t("company.email"), subject: "Aanvraag via contactformulier"
  end
end
