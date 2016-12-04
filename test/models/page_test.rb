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

    it 'is valid' do
      assert page.valid?
    end
  end

end
