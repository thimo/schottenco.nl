source 'https://rubygems.org'

ruby '2.4.1'

gem 'rails', '~> 5.1.0'
gem 'pg'
gem 'puma'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'redis'
gem 'bcrypt'

gem 'faker'
gem 'carrierwave'
gem 'carrierwave-imageoptimizer' # also do: brew install optipng jpegoptim (or via 'apt-get' on Ubuntu)
gem 'mini_magick'
gem 'bootstrap-sass'
gem 'bootstrap-datepicker-rails'           # Datepicker for Bootstrap
gem 'font-awesome-rails'
gem 'sdoc', group: :doc
gem 'rails-i18n'
gem 'kaminari' # Paging
gem 'kaminari-bootstrap'
gem 'simple_form'
gem 'country_select'
gem 'enum_help'
gem 'modernizr-rails'
# gem 'roo'
gem 'breadcrumbs_on_rails' # Breadcrumbs in admin
gem 'net-ssh'
gem 'figaro'
gem 'autosize-rails' # Auto-resize textarea's
# gem 'axlsx',                      git: 'https://github.com/randym/axlsx.git' # Generate XLSX
# gem 'axlsx_rails',                '>= 0.4.0'
gem 'devise'
gem 'cancancan'
gem 'rolify'#,                     '>= 5.0.0'
# gem 'bootstrap3_autocomplete_input'
# gem 'deep_cloneable',             '>= 2.2.0'
gem 'kramdown'                     # Markdown parser
# gem 'comfortable_mexican_sofa', '~> 1.12.9'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # gem 'pry-byebug'
  gem 'awesome_print', require: "awesome_print"
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'

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
  gem 'rails_12factor'
  gem 'exception_notification'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
