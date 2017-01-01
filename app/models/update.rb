class Update < ActiveRecord::Base

  validates :title, presence: {message: 'Title the news update.'}, on: :create
  validates :content, presence: {message: 'Content could not be saved.'}, on: :create

end
