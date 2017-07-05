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

require 'test_helper'

class PageTest < ActiveSupport::TestCase
  let :page do
    pages :basic
  end

  describe 'basic valid page' do
    it 'has a title' do
      assert page.title
    end

    it 'has a position' do
      assert page.position
    end

    it 'has a slug' do
      assert page.slug
    end

    it 'is valid' do
      assert page.valid?
    end
  end

end
