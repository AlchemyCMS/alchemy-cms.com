class Showcase < ActiveRecord::Base
  dragonfly_accessor :screenshot
  validates :title, presence: true, uniqueness: true
  validates :url, presence: true, format: {with: /\Ahttps?:\/\//}
end
