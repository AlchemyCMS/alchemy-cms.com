require 'bundler/capistrano'
require 'alchemy/capistrano'
require 'caplock'

# ssh settings
set :user,                      ENV["DEPLOY_USER"]
set :ssh_options,               { forward_agent: true }
ssh_options[:keys] =            [File.join(ENV["HOME"], ".ssh", "id_rsa")]
default_run_options[:pty] =     true

# domain names
role :app,                      "alchemy-cms.com"
role :web,                      "alchemy-cms.com"
role :db,                       "alchemy-cms.com", :primary => true

# the webserver path
set :deploy_to,                 "/var/www/alchemy-homepage"

# repository settings
set :scm,                       "git"
set :repository,                "git@github.com:AlchemyCMS/alchemy-cms.com.git"
set :branch,                    "master"

# before hooks
before "deploy",                "deploy:web:disable"
before "deploy:start",          "deploy:seed"
before "deploy:create_symlink", "deploy:migrate"

# after hooks
after "deploy:assets:symlink",  "alchemy:database_yml:symlink"
after "deploy:assets:symlink",  "dotenv:symlink"
after "deploy",                 "deploy:cleanup"
after "deploy",                 "deploy:web:enable"

# special tasks

namespace :dotenv do
  desc "Symlink .env file"
  task :symlink do
    run "ln -s #{shared_path}/.env #{release_path}/.env"
  end
end

namespace :log do
  desc "show last 100 lines of log"
  task :show do
    run "tail -n100 #{shared_path}/log/#{rails_env}.log"
  end

  desc "watch tail of log and wait for additional data to be appended to the input"
  task :watch do
    stream("tail -f #{shared_path}/log/#{rails_env}.log")
  end
end

namespace :deploy do

  task :start do ; end
  task :stop do ; end

  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end

  desc 'Seeds the database'
  task :seed, :roles => :app, :except => { :no_release => true } do
    run "cd #{release_path} && RAILS_ENV=#{rails_env} #{rake} db:seed"
  end

end

## defaults

# rails env
set :rails_env,                 "production"

# enable bundler binstubs
set :bundle_flags,              "--deployment --binstubs"

# do not use sudo
set :use_sudo,                  false
