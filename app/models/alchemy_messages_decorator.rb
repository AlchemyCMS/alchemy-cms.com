module Alchemy
  Messages.class_eval do
    def contact_form_confirmation_mail(message)
      mail(
        from: "AlchemyCMS Support <alchemy@magiclabs.de>",
        to: message.email1,
        reply_to: "alchemy@magiclabs.de",
        subject: "Professional Alchemy CMS Support - Your inquiry"
      )
    end

    def contact_form_mail(message, mail_to, mail_from, subject)
      @message = message
      mail(
        from: mail_from,
        to: mail_to,
        subject: subject
      )
    end
  end
end
