lock '3.6.1'

set :application, 'alchemy-homepage'
set :repo_url, 'git@github.com:AlchemyCMS/alchemy-cms.com.git'

append :linked_files, 'config/database.yml', '.env'
append :linked_dirs, 'log', 'tmp/cache', 'public/system'

before :deploy, 'maintenance:enable'
after :deploy, 'maintenance:disable'

after 'alchemy:import:pictures', 'import:showcases'

namespace :import do
  desc "Import showcase pictures"
  task :showcases do
    system "mkdir -p ./public/system"
    puts "Importing showcase screenshots. Please wait..."
    on roles :app do |server|
      system "rsync --progress -rue 'ssh -p #{server.port || 22}' #{server.user}@#{server.hostname}:#{shared_path}/public/system/dragonfly ./public/system/"
    end
  end
end
