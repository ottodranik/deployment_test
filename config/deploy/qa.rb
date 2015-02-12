server 'localhost', :app, :web, :db, primary: true

set :deploy_to, "/Users/vessi/edu/deployment"
set :branch, 'develop'
set :rvm_ruby_string, '2.1.2@deployment_test'
