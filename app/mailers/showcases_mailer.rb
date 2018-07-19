class ShowcasesMailer < ActionMailer::Base
  default from: "mail@alchemy-cms.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.showcases_mailer.registration.subject
  #
  def registration(showcase)
    @showcase = showcase

    mail to: "tvdeyen+alchemy@gmail.com", subject: "Alchemy Showcase Registration"
  end
end
