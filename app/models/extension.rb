class Extension < ActiveRecord::Base
  acts_as_taggable_on :keywords

  validates :name, presence: true, uniqueness: true
  validates :maintainer, presence: true
  validates :url, presence: true, format: {with: /\Ahttps?:\/\//}

  scope :maintained_by, ->(maintainer) { where(maintainer: maintainer) }

  def to_param
    "#{id}-#{name.parameterize}"
  end
end
