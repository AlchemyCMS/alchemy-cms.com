Airbrake.configure do |config|
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
  config.api_key = '92c81da55ed0898d59bbc4f707ea9a86'
  config.host    = 'errors.magiclabs.de'
  config.port    = 443
  config.secure  = config.port == 443
end