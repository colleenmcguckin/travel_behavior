require 'test_helper'

class UpdateTest < ActiveSupport::TestCase
  let :update do
    updates :basic
  end

  describe 'basic valid update' do
    it 'has a title' do
      assert update.title
    end

    it 'has content' do
      assert update.content
    end

    it 'is valid' do
      assert update.valid?
    end
  end

end
