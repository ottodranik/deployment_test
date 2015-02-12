set :stages, %w(production qa)
# set :default_stage, 'qa'

require 'capistrano/ext/multistage'

set :user, 'vessi'
set :group, 'vessi'

set :use_sudo, false

set :application, "deployment_test"
set :repository,  -> { "git@github.com:vessi/#{application}.git" }

set :scm, :git

set(:branch) do
  ENV['BRANCH'] || fetch(:branch)
end

require 'rvm/capistrano'
require 'bundler/capistrano'
#require 'capistrano-unicorn'

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
