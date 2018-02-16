source 'https://rubygems.org'

gem 'rails', '~> 5.0.0'
gem 'pg', '~> 0.19'

'master'.tap do |branch|
  gem 'alchemy_cms',    git: 'https://github.com/AlchemyCMS/alchemy_cms',    branch: branch
  gem 'alchemy-devise', git: 'https://github.com/AlchemyCMS/alchemy-devise', branch: branch
end

gem 'newrelic_rpm'
gem 'kramdown', '~> 1.4.1'
gem 'airbrake', '~> 4.3.4'

# Fix for Alchemy 3.2 having to loose ams version
gem 'active_model_serializers', '~> 0.9.5'

# assets
gem 'sassc-rails', '~> 1.3'
gem 'coffee-rails', '~> 4.2'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails', '~> 4.0'
gem 'autoprefixer-rails'
gem 'zurb-foundation', '~> 4.3.2'
gem 'dotenv-rails', '~> 0.11'

# caching
gem 'rack-cache', require: 'rack/cache'

group :development do
  gem 'pry'
  gem 'capistrano', '3.6.1'
  gem 'capistrano-alchemy', '~> 1.0', require: false
  gem 'capistrano-maintenance', require: false
  gem 'capistrano-passenger', require: false
  # required for ed25519 ssh support
  gem 'rbnacl', '>= 3.2', '< 5.0', require: false
  gem 'rbnacl-libsodium', require: false
  gem 'bcrypt_pbkdf', '>= 1.0', '< 2.0', require: false
  gem 'thin'
  gem 'spring'
  gem 'web-console', '~> 2.0'
end

group :production do
  gem 'mini_racer', '~> 0.1.7'
end
