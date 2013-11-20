require "bundler/capistrano"
require 'capistrano/ext/multistage'

set :stages, ["production"]
set :default_stage, "production"

set :skip_assets, false

set :scm, "git"
set :repository, "git@github.com:tr8n/tr8n_rails_clientsdk_sample.git"
set :branch, "master"
set :git_enable_submodules, 1
set :nginx_port, 80

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

# set :whenever_command, "bundle exec whenever"

after "deploy", "deploy:cleanup" # keep only the last 5 releases

namespace :deploy do
  namespace :assets do
    desc "Precompile assets locally and then rsync to app servers"
    task :precompile, :only => { :primary => true } do
      if skip_assets
        logger.info "Skipping asset pre-compilation"
      else
        run_locally "mkdir -p public/__assets; mv public/__assets public/assets;"
        run_locally "bundle exec rake assets:clean_expired; bundle exec rake assets:precompile;"
        servers = find_servers :roles => [:app], :except => { :no_release => true }
        servers.each do |server|
          run_locally "rsync -av ./public/assets/ #{user}@#{server}:#{shared_path}/assets/;"
        end
        run_locally "mv public/assets public/__assets"
        # run "ln -s #{shared_path}/assets #{fetch(:latest_release)}/public/assets"
      end
    end
  end
end
