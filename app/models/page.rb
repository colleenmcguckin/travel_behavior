# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  title      :string
#  position   :integer
#  content    :text
#  slug       :string
#  created_at :datetime
#  updated_at :datetime
#

class Page < ActiveRecord::Base
  DEFAULT_PAGES = ['Topic Briefs', 'Projects', 'Publications', 'Consultant Services', 'Select Clients', 'About Me']

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
