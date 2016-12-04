class Image < ActiveRecord::Base

  attr_accessor :path

  validates :title, presence: {message: 'Title the image.'}, on: :create
  validates :path, presence: {message: 'Pick the image file.'}, on: :create
  validates :description, presence: {message: 'Describe the image as if for the visually impaired to understand.'}

end
