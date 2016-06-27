# Based on production defaults, thus only overwrite staging specific settings
require Rails.root.join("config/environments/production")

Rails.application.configure do
  # config.action_mailer.delivery_method = :test
  host = 'staging.schottenco.nl'
  config.action_mailer.default_url_options = { host: host, protocol: 'https' }
  config.action_mailer.asset_host = 'https://' + host

  # Custom config option specific for this Application
  ActionMailer::Base.register_interceptor(ServerMailInterceptor)
end
