class Showcase < ActiveRecord::Base
  acts_as_taggable_on :keywords

  dragonfly_accessor :screenshot

  validates :title, presence: true, uniqueness: true
  validates :url, presence: true, format: {with: /\Ahttps?:\/\//}

  scope :published, -> { where(public: true) }
end
