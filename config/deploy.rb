require "bundler/capistrano"
require "alchemy/capistrano"
load 'deploy/assets'

set :application, "alchemy-cms"
set :repository,  "git@magiclabs.de:alchemy-app.git"
set :branch, 'compass_960'

set :scm, :git
set :deploy_via, :remote_cache
set :copy_exclude, [".svn", ".DS_Store"]

set :use_sudo, false
set :port, 12312

set :user, "web28"
set :password, "hym1guv3"

role :web, "rv2.nethosting4you-server.de"                          # Your HTTP server, Apache/etc
role :app, "rv2.nethosting4you-server.de"                          # This may be the same as your `Web` server
role :db,  "rv2.nethosting4you-server.de", :primary => true        # This is where Rails migrations will run

set :deploy_to, "/var/www/#{user}/html/#{application}_gfx"

after "deploy:setup", "deploy:db:setup" unless fetch(:skip_db_setup, false)

after "deploy:symlink", "deploy:db:symlink"

before "deploy:restart", "deploy:migrate"
before "deploy:restart", "deploy:seed"

after "deploy", "deploy:cleanup"

namespace :logs do
  desc "show last 100 lines of production.log"
  task :tail do
    run "tail -n100 #{shared_path}/log/production.log"
  end

  desc "watch tail of production.log and wait for additional data to be appended to the input"
  task :watch do
    stream("tail -f #{shared_path}/log/production.log")
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
      run "cd #{release_path} && RAILS_ENV=production #{rake} db:seed"
    end
  
  namespace :db do
    
    desc <<-DESC
      Creates the database.yml configuration file in shared path.

      By default, this task uses a template unless a template \
      called database.yml.erb is found either is :template_dir \
      or /config/deploy folders. The default template matches \
      the template for config/database.yml file shipped with Rails.

      When this recipe is loaded, db:setup is automatically configured \
      to be invoked after deploy:setup. You can skip this task setting \
      the variable :skip_db_setup to true. This is especially useful \ 
      if you are using this recipe in combination with \
      capistrano-ext/multistaging to avoid multiple db:setup calls \ 
      when running deploy:setup for all stages one by one.
    DESC
    
    task :setup, :except => { :no_release => true } do
      
      default_template = <<-EOF
      production:
        adapter: mysql2
        encoding: utf8
        reconnect: false
        pool: 5
        database: usr_web28_4
        username: web28
        password: pBCcLenz
        socket: /var/run/mysqld/mysqld.sock
      EOF
      
      location = fetch(:template_dir, "config/deploy") + '/database.yml.erb'
      template = File.file?(location) ? File.read(location) : default_template
      
      config = ERB.new(template)
      
      run "mkdir -p #{shared_path}/config" 
      put config.result(binding), "#{shared_path}/config/database.yml"
    end
    
    desc <<-DESC
      [internal] Updates the symlink for database.yml file to the just deployed release.
    DESC
    task :symlink, :except => { :no_release => true } do
      run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml" 
    end
    
  end
  
end

