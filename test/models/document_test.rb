# == Schema Information
#
# Table name: documents
#
#  id               :integer          not null, primary key
#  heading          :string
#  content          :text
#  summary          :text
#  category         :string
#  publication_date :date
#  title            :string
#  pdf_id           :string
#  pdf_filename     :string
#  pdf_size         :integer
#  pdf_content_type :string
#  created_at       :datetime
#  updated_at       :datetime
#

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
