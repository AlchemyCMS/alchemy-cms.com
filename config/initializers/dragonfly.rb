require 'dragonfly'

# Configure showcases screenshots
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

# AlchemyCMS Dragonfly configuration.
#
# Consider using some kind of caching solution for image processing.
# For small projects, we have good experience with Rack::Cache.
#
# Larger installations should consider using a CDN, start reading
# http://markevans.github.io/dragonfly/cache/
#
# A complete reference can be found at
# http://markevans.github.io/dragonfly/configuration/
#
# Pictures
#
Dragonfly.app(:alchemy_pictures).configure do
  dragonfly_url nil
  plugin :imagemagick,
    convert_command: ENV['CONVERT_COMMAND'],
    identify_command: ENV['IDENTIFY_COMMAND']
  plugin :svg
  secret 'f282a355212c6e2cb35ba0d91aa19aff88035b99039338ea8c6635c2e76b177b'
  url_format '/pictures/:job/:name.:ext'

  datastore :file,
    root_path: Rails.root.join('uploads/pictures').to_s,
    server_root: Rails.root.join('public'),
    store_meta: false
end

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware, :alchemy_pictures

# Attachments
Dragonfly.app(:alchemy_attachments).configure do
  datastore :file,
    root_path:  Rails.root.join('uploads/attachments').to_s,
    store_meta: false
end
