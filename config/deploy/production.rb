server '104.236.104.13', :app, :web, :db, primary: true

set :user, "deploy"
set :deploy_to, "/home/deploy/app"
set :branch, 'master'
set :rvm_ruby_string, '2.1.2@deployment_test'
