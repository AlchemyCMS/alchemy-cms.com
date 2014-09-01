class ShowcasesMailer < ActionMailer::Base
  default from: "support@magiclabs.de"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.showcases_mailer.registration.subject
  #
  def registration(showcase)
    @showcase = showcase

    mail to: "alchemy@magiclabs.de", subject: "Alchemy Showcase Registration"
  end
end
