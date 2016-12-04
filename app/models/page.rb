class Page < ActiveRecord::Base
  validates :title presence: true
  validates :position presence: true
end
