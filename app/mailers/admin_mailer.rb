class AdminMailer < ApplicationMailer

  def registration_notification(registration)
    @registration = registration
    mail to: I18n.t("company.email"), subject: "Aanmelding voor #{@registration.agenda_item.title}"
  end

end
