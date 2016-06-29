class ServerMailInterceptor

  def self.delivering_email(message)
    puts "Intercept mail message"
    email = 'webmaster@schottenco.nl'

    Rails.logger.warn "Emails are sent to #{email} email account from #{Rails.env} env"

    development_information =  "[ TO: #{message.to} ]"
    development_information << " [ CC: #{message.cc} ]" if message.cc
    development_information << " [ BCC: #{message.bcc} ]" if message.bcc

    message.to = email
    message.cc = nil
    message.bcc = nil
    message.subject = "[#{Rails.env}] #{message.subject} #{development_information}"
  end

end
