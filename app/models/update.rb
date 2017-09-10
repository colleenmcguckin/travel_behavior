# == Schema Information
#
# Table name: updates
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  link       :string
#  link_text  :string
#  created_at :datetime
#  updated_at :datetime
#

class Update < ActiveRecord::Base
  default_scope { order(published_at: :desc) }

  validates :title, presence: {message: 'Title the news update.'}, on: :create
  validates :content, presence: {message: 'Content could not be saved.'}, on: :create

  scope :published,   -> { where('published_at IS NOT NULL') }
  scope :unpublished, -> { where('published_at IS NULL') }
  scope :homepage,    -> { where("published_at IS NOT NULL AND hide = 'f'").order(:published_at) }

  def self.create_default_records!
    Update.create(
      title: 'The Internet’s Effect on Travel',
      content: 'The share of people in their teens, 20s and 30s with driver\'s licenses has been dropping significantly, suggesting that getting a driver\'s license is no longer the teenage rite of passage it once was. "They don\'t have to drive,” Nancy McGuckin, a travel behavior analyst, told USA Today. “They socialize online. They shop online. I think we\'re being blind if we don\'t accept that the internet is changing travel."',
      published_at: DateTime.now,
      link: ' http://www.govexec.com/management/2016/04/federal-highway-administration-decline-american-teens-drivers-licenses-hits-new-low/127283/'
    )

    Update.create(
      title: 'Commute Characteristics of Men and Women',
      content: "Commuting, for women, gets added to an already heavy workload that often includes child care and the majority of day-to-day household tasks, the researchers explained. Nancy McGuckin, a travel behavior analyst, says that for many women, commuting is not just a matter of getting through rush hour.",
      link: "http://www.pbs.org/newshour/rundown/commuting-driving-women-workforce/",
      published_at: DateTime.now - 1.day
    )

    Update.create(
      title: 'Driverless Cars?',
      content: "Nancy McGuckin joins a distinguished panel on NPR’s ‘To The Point’ to discuss one of the most exciting changes in travel: autonomous (self-driving) vehicles.",
      published_at: DateTime.now - 2.days,
      link: ':http://www.kcrw.com/news-culture/shows/to-the-point/is-the-world-ready-for-self-driving-cars'
    )

    Update.create(
      title: 'Vehicle Miles of Travel Rise',
      content: "The U.S. economy added 3.1 million jobs. Gasoline plunged below $3 a gallon. As a result, driving topped 3 trillion miles for the first time in seven years and is poised to climb higher this year. “Gas prices are down, the economy is ticking up and freight seems to be pushing a lot of growth because of more home-delivered goods,” according to Nancy McGuckin.",
      link: " https://www.bloomberg.com/amp/news/articles/2015-03-23/3-million-jobs-3-gasoline-3-trillion-miles-driven-in-u-s-",
      published_at: DateTime.now - 3.days
    )
  end

end
