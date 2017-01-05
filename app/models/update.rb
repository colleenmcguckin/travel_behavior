class Update < ActiveRecord::Base

  validates :title, presence: {message: 'Title the news update.'}, on: :create
  validates :content, presence: {message: 'Content could not be saved.'}, on: :create

  def self.create_default_records!
    Update.create(
      title: 'Emerging Trends in US Vehicle Travel Demand',
      content: "Vehicle travel per person has shown declines for some groups in recent years, notable younger people. But overall system changes may be underway for a variety of economic reasons, social changes, and communications technology."
    )

    Update.create(
      title: 'Driverless Cars?',
      content: "Nancy McGuckin joins a distinguished panel on NPR’s ‘To The Point’ to discuss one of the most exciting changes in travel: autonomous (self-driving) vehicles.",
      link: "https://www.kcrw.com/news-culture/shows/to-the-point/is-the-world-ready-for-self-driving-cars"
    )

    Update.create(
      title: 'Decline in Young Drivers',
      content: "Millenials may be traveling differently than previous generations. There are economic reasons for the shift away from driving in younger age cohorts, McGuckin's research indicates. But she also speculates that social changes and electronic communications may have something to do with it. She recently presented her research on “Millenials and Mobility”here."
    )

    Update.create(
      title: 'Video Lecture Series',
      content: "“Walking and Biking in California” is the first in a series of video lectures on the subject of travel behavior given by Ms. McGuckin. This lecture was taped at the prestigious METRANS Center at University of Southern California.",
      link: "https://www.youtube.com/watch?v=pI5Xar59M5M"
    )
  end

end
