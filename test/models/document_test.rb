require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  let :document do
    documents :basic
  end

  describe 'basic valid image' do
    it 'has a title' do
      assert document.title
    end

    it 'has content' do
      assert document.content
    end

    it 'has a category' do
      assert document.category
    end

    it 'has a publication_date' do
      assert document.publication_date
    end

    it 'is valid' do
      assert document.valid?
    end
  end

end
