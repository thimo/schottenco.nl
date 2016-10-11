class ApplicationMailer < ActionMailer::Base
  default from: "\"#{ I18n.t("company.name") }\" <mailrobot@schottenco.nl>"
  layout 'mailer'

  ActionMailer::Base.register_observer(::MailLoggerObserver)
end
