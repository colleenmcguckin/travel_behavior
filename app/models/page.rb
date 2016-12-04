class Page < ActiveRecord::Base
  DEFAULT_PAGES = ['Topic Briefs', 'Projects', 'Publications', 'Consultant Services', 'About Me']

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true
  validates :position, presence: true

  def self.create_default_records!
    DEFAULT_PAGES.each_with_index do |page, index|
      Page.create!(
        title: page,
        position: index
      )
    end
  end
end
