if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

source 'http://rubygems.org'

gem 'rails', '3.2.11'
gem 'mysql2'
gem 'alchemy_cms', :github => 'magiclabs/alchemy_cms', :branch => 'master'
gem 'feed-normalizer'

group :development do
  gem 'debugger', :platforms => :ruby_19
  gem 'ruby-debug', :platforms => :ruby_18
  gem 'capistrano'
  gem 'capistrano-maintenance'
  gem 'caplock', github: 'Druwerd/caplock'
  gem 'thin'
end

group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'compass-rails'
  gem 'compass-960-plugin'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier',     '>= 1.0.3'
  gem 'quiet_assets'
  gem 'turbo-sprockets-rails3'
end

group :production do
  gem 'execjs'
  gem 'therubyracer'
end
