require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick,
    convert_command: ENV['CONVERT_COMMAND'],
    identify_command: ENV['IDENTIFY_COMMAND']

  secret ENV['DRAGONFLY_SECRET']

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly'),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end

Dragonfly.app(:alchemy_pictures).configure do
  plugin :imagemagick,
    convert_command: ENV['CONVERT_COMMAND'],
    identify_command: ENV['IDENTIFY_COMMAND']
end
