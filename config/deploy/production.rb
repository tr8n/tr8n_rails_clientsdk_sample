load "config/deploy/recipes/ubuntu/base"
load "config/deploy/recipes/ubuntu/nginx"
load "config/deploy/recipes/ubuntu/unicorn"
load "config/deploy/recipes/ubuntu/check"

server "rails.tr8nhub.com", :web, :app, :db, primary: true

set :rails_env, "production"

set :application, "railssdk"
set :server_name, "rails.tr8nhub.com"
set :user, "tr8n"
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false
