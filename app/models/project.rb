class Project < ActiveRecord::Base

  CATEGORIES = ['National', 'Airport and Rail/Long-Distance', 'Travel Demand Trends', 'Sustainability, Health and Safety', 'Regional Master Plan', 'Other']

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true

end
