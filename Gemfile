if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

source 'http://rubygems.org'

gem 'rails', '~> 4.0.2'
gem 'mysql2'
gem 'alchemy_cms',    github: 'magiclabs/alchemy_cms',    branch: 'master'
gem 'alchemy-devise', github: 'magiclabs/alchemy-devise', branch: '2.0-stable'
gem 'newrelic_rpm'
gem 'devise-encryptable'
gem 'kramdown', '~> 1.4.1'
gem 'airbrake'

# assets
gem 'sass-rails', '~> 4.0.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'compass-rails'
gem 'zurb-foundation', '~> 3.2.5'

group :development do
  gem 'pry'
  gem 'capistrano', "~> 2.15"
  gem 'caplock', github: 'Druwerd/caplock'
  gem 'thin'
  gem 'quiet_assets'
  gem 'spring'
end
