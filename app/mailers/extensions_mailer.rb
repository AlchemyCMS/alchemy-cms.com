class ExtensionsMailer < ActionMailer::Base
  default from: "hello@alchemy-cms.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.extensions_mailer.registration.subject
  #
  def registration(extension)
    @extension = extension

    mail to: "alchemy@magiclabs.de", subject: "Alchemy Extension Registration"
  end
end
