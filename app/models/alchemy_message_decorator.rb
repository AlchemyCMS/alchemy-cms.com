module Alchemy
  Message.class_eval do
    validate :not_spam?

    def not_spam?
      return true if spamblocker.blank?
      errors.add(:spamblocker, "dont send us spam emails!")
    end

  end
end
