class Document < ActiveRecord::Base
  CATEGORIES = %w[projects publications topic_briefs]

  attachment :pdf

  validates :title, presence: {message: 'Title the image.'}, on: :create
  validates :category, presence: {message: 'Pick the category.'}, on: :create
  validates :publication_date, presence: {message: 'Pick the publication date, or today.'}, on: :create
  validates :content, presence: {message: 'Content could not be saved.'}, on: :create

end
