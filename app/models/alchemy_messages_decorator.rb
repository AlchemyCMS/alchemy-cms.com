module Alchemy
  Messages.class_eval do
    def contact_form_confirmation_mail(message)
      mail(
        from: "mail@magiclabs.de",
        to: message.email,
        reply_to: "mail@magiclabs.de",
        subject: "Professional Alchemy CMS Support - Your inquiry"
      )
    end
  end
end
