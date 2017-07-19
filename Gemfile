source 'https://rubygems.org'

gem 'rails', '~> 4.2.7'
gem 'pg', '~> 0.19'
gem 'alchemy_cms',    git: 'https://github.com/AlchemyCMS/alchemy_cms',    branch: '3.5-stable'
gem 'alchemy-devise', git: 'https://github.com/AlchemyCMS/alchemy-devise', branch: '3.5-stable'
gem 'newrelic_rpm'
gem 'kramdown', '~> 1.4.1'
gem 'airbrake', '~> 4.3.4'

# Fix for Alchemy 3.2 having to loose ams version
gem 'active_model_serializers', '~> 0.9.5'

# assets
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails', '~> 4.0'
gem 'compass-rails', '~> 2.0'
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
  gem 'thin'
  gem 'quiet_assets'
  gem 'spring'
  gem 'web-console', '~> 2.0'
end

group :production do
  gem 'mini_racer', '~> 0.1.7'
end
