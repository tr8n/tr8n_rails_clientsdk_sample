load "config/deploy/recipes/ubuntu/base"
load "config/deploy/recipes/ubuntu/nginx"
load "config/deploy/recipes/ubuntu/unicorn"
load "config/deploy/recipes/ubuntu/check"

server "rails.tmlhub.com", :web, :app, :db, primary: true

set :rails_env, "production"

set :application, "railssdk"
set :server_name, "rails.tmlhub.com"
set :user, "tml"
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false
