source 'https://rubygems.org'

gem 'rails', '~> 5.2.2'
gem 'pg', '~> 1.0'

'4.3-stable'.tap do |branch|
  gem 'alchemy_cms',    git: 'https://github.com/AlchemyCMS/alchemy_cms',    branch: branch
  gem 'alchemy-devise', git: 'https://github.com/AlchemyCMS/alchemy-devise', branch: branch
end

gem 'newrelic_rpm'
gem 'kramdown', '~> 2.3.1'

# assets
gem 'sassc-rails', '~> 1.3'
gem 'coffee-rails', '~> 4.2'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails', '~> 4.4'
gem 'autoprefixer-rails'
gem 'zurb-foundation', '~> 4.3.2'
gem 'dotenv-rails', '~> 0.11'
gem 'sprockets', '< 4'

# caching
gem 'rack-cache', require: 'rack/cache'

group :development do
  gem 'pry'
  gem 'capistrano', '3.6.1'
  gem 'capistrano-alchemy', '~> 1.0', require: false
  gem 'capistrano-maintenance', require: false
  gem 'capistrano-passenger', require: false
  gem 'thin'
  gem 'spring'
  gem 'web-console'
  gem 'listen'
  gem 'letter_opener'
end

group :production do
  gem 'mini_racer'
end

gem "bugsnag", "~> 6.8"

gem "rack-attack", "~> 5.4"
