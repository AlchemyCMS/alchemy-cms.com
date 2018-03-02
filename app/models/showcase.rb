class Showcase < ApplicationRecord
  include Alchemy::Taggable

  dragonfly_accessor :screenshot

  validates :title, presence: true, uniqueness: true
  validates :url, presence: true, format: {with: /\Ahttps?:\/\//}

  scope :published, -> { where(public: true) }
end
