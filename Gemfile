source 'https://rubygems.org'

ruby '2.3.1'

gem 'rails', '~> 5.0.0'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks', '~> 5.x'
gem 'jbuilder', '~> 2.0'
gem 'redis', '~> 3.0'
gem 'bcrypt', '~> 3.1.7'

gem 'faker',                      '>= 1.6.0'
gem 'carrierwave',                '>= 0.10.0'
gem 'mini_magick',                '>= 4.3.6'
gem 'bootstrap-sass',             '>= 3.3.6'
gem 'bootstrap-datepicker-rails'           # Datepicker for Bootstrap
gem 'font-awesome-rails'
# gem 'jquery-ui-sass-rails',       '>= 4.0.3' # Incompatible with Rails 5
gem 'sdoc',                       '>= 0.4.0', group: :doc
gem 'rails-i18n',                 '>= 4.0.2'
# gem 'kaminari',                   '>= 0.16.3'  # Paging
# gem 'kaminari-bootstrap',         '>= 3.0.1'   # Bootstrap templates for paging
gem 'simple_form',                '>= 3.2.0'
gem 'country_select'
gem 'enum_help',                  '>= 0.0.14'
gem 'modernizr-rails',            '>= 2.7.1'
# gem 'roo'
# gem 'breadcrumbs_on_rails',       '>= 3.0.0'   # Breadcrumbs in admin
gem 'breadcrumbs_on_rails',       git: 'https://github.com/weppos/breadcrumbs_on_rails.git'
gem 'net-ssh',                    '>= 3.0.2'
gem 'figaro',                     '>= 1.1.1'
gem 'autosize-rails',             '>= 1.18.17' # Auto-resize textarea's
# gem 'axlsx',                      git: 'https://github.com/randym/axlsx.git' # Generate XLSX
# gem 'axlsx_rails',                '>= 0.4.0'
gem 'devise'
gem 'cancancan'
gem 'rolify',                     '>= 5.0.0'
# gem 'bootstrap3_autocomplete_input'
# gem 'deep_cloneable',             '>= 2.2.0'
gem 'redcarpet',                  '>= 3.3.4' # Markdown parser
# gem 'comfortable_mexican_sofa', '~> 1.12.9'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # gem 'pry-byebug'
  gem 'awesome_print', require: "awesome_print"
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'letter_opener'
  gem 'capistrano'
  gem 'capistrano3-puma'
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rvm'
  gem 'meta_request'
  gem 'better_errors' # https://github.com/charliesome/better_errors
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'rack-mini-profiler'
end

group :test do
  gem 'minitest-reporters'
  gem 'mini_backtrace'
  gem 'guard'
  gem 'guard-minitest'
end

group :production, :staging do
  gem 'rails_12factor',         '>= 0.0.2'
  gem 'exception_notification'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
