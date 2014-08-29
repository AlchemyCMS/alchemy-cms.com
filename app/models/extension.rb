class Extension < ActiveRecord::Base
  attr_accessible :description, :url, :maintainer, :name, :keyword_list

  acts_as_taggable_on :keywords

  validates :name, presence: true, uniqueness: true
  validates :maintainer, presence: true
  validates :url, presence: true

  scope :maintained_by, ->(maintainer) { where(maintainer: maintainer) }

  def to_param
    "#{id}-#{name.parameterize}"
  end
end
