# config valid only for current version of Capistrano
lock '3.5.0'

set :repo_url, 'git@bitbucket.org:thimo/schottenco.git'
# set :branch, :master
# set :deploy_to, '/home/thimo/vivoforto_portal'
set :pty, true
set :linked_files, %w{config/database.yml config/application.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}
set :keep_releases, 5
set :rvm_type, :user
set :rvm_ruby_version, 'ruby-2.3.1'  # Edit this to match ruby version you use

# set :puma_rackup, -> { File.join(current_path, 'config.ru') }
# set :puma_state, "#{shared_path}/tmp/pids/puma.state"
# set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
# set :puma_bind, "unix://#{shared_path}/tmp/sockets/puma.sock"    #accept array for multi-bind
# set :puma_conf, "#{shared_path}/puma.rb"
# set :puma_access_log, "#{shared_path}/log/puma_error.log"
# set :puma_error_log, "#{shared_path}/log/puma_access.log"
set :puma_role, :app
# set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
set :puma_threads, [0, 8]
set :puma_workers, 0
set :puma_worker_timeout, nil
set :puma_init_active_record, true
set :puma_preload_app, false

# set :user, "thimo"
#
# namespace :foreman do
#   desc "Export the Procfile to Ubuntu's upstart scripts"
#   task :export, :roles => :app do
#     run "cd #{current_path} && #{sudo} foreman export upstart /etc/init -a #{application} -u #{user} -l /var/#{application}/log"
#   end
#
#   desc "Start the application services"
#   task :start, :roles => :app do
#     run "#{sudo} service #{application} start"
#   end
#
#   desc "Stop the application services"
#   task :stop, :roles => :app do
#     run "#{sudo} service #{application} stop"
#   end
#
#   desc "Restart the application services"
#   task :restart, :roles => :app do
#     run "#{sudo} service #{application} start || #{sudo} service #{application} restart"
#   end
# end
