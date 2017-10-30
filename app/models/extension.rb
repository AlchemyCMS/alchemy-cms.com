class Extension < ApplicationRecord
  acts_as_taggable_on :keywords

  validates :name, presence: true, uniqueness: true
  validates :maintainer, presence: true
  validates :url, presence: true, format: {with: /\Ahttps?:\/\//}

  scope :maintained_by, ->(maintainer) { where(maintainer: maintainer) }
  scope :published, -> { where(public: true) }

  def to_param
    "#{id}-#{name.parameterize}"
  end
end
