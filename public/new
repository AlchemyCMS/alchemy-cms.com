gem 'alchemy_cms'
gem 'alchemy-devise'

after_bundle do
  rails_command 'alchemy:install'
  generate 'alchemy:devise:install'

  rails_command 'db:migrate'
end
