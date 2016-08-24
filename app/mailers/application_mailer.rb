class ApplicationMailer < ActionMailer::Base
  default from: "\"Schott & Co \" <mailrobot@schottenco.nl>"
  layout 'mailer'

  ActionMailer::Base.register_observer(::MailLoggerObserver)
end
