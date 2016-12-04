require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  let :image do
    images :basic
  end

  describe 'basic valid image' do
    it 'has a title' do
      assert image.title
    end

    it 'has a description' do
      assert image.description
    end

    it 'has a public_id' do
      assert image.public_id
    end

    it 'is valid' do
      assert image.valid?
    end
  end

end
