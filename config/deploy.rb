lock '3.6.1'

set :application, 'alchemy-homepage'
set :repo_url, 'git@github.com:AlchemyCMS/alchemy-cms.com.git'

append :linked_files, 'config/database.yml', '.env'
append :linked_dirs, 'log', 'tmp/cache', 'public/system'

before :deploy, 'maintenance:enable'
after :deploy, 'maintenance:disable'
