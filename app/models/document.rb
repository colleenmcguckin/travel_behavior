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

class Document < ActiveRecord::Base
  default_scope { order(publication_date: :desc) }

  CATEGORIES = %w[publications topic_briefs power_points projects]

  attachment :pdf

  validates :title, presence: {message: 'Title the document.'}, on: :create
  validates :category, presence: {message: 'Pick the category.'}, on: :create
  validates :publication_date, presence: {message: 'Pick the publication date, or today.'}, on: :create

  def self.create_default_records!
    Document.create(
      publication_date: Date.today,
      heading: 'Demographics',
      heading_position: 0,
      title: "Travel Demand in the Context of Growing Diversity",
      category: "publications"
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Demographics',
      heading_position: 0,
      title: "Work, Automobility, and Commuting: Differences by Race and Ethnic Backgrounds",
      category: "publications"
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Demographics',
      heading_position: 0,
      title: "Does Race and Ethnicity Make a Difference in Travel Behavior?",
      category: "publications"
    )

    Document.create(
      publication_date: Date.today - 3.days,
      heading: 'Demographics',
      heading_position: 0,
      title: "Aging Cars, Aging Drivers",
      category: "publications",
      link_url: "https://search.proquest.com/openview/c760f749a715562bc09cd5976c88fadc/1?pq-origsite=gscholar&cbl=42116"
    )

    Document.create(
      publication_date: Date.today,
      heading: 'Journey to Work and Commuting',
      heading_position: 1,
      title: "The Journey to Work in the Context of Daily Travel",
      category: "publications"
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Journey to Work and Commuting',
      heading_position: 1,
      title: "Trip Chaining Trends in The U.S. – Understanding Travel Behavior for Policy Making",
      category: "publications"
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Journey to Work and Commuting',
      heading_position: 1,
      title: "Understanding Trip Chaining",
      category: "publications",
      link_url: "http://nhts.ornl.gov/1995/Doc/Chain2.pdf"
    )

    Document.create(
      publication_date: Date.today - 3.days,
      heading: 'Journey to Work and Commuting',
      heading_position: 1,
      title: "Working Retirement – Travel Trends of the Aging Workforce",
      category: "publications"
    )

    Document.create(
      publication_date: Date.today - 4.days,
      heading: 'Journey to Work and Commuting',
      heading_position: 1,
      title: "Journey to Work in the US and it’s Major Metropolitan Areas",
      category: "publications",
      link_url: "https://trid.trb.org/view.aspx?id=748342"
    )

    Document.create(
      publication_date: Date.today,
      heading: 'Long Distance',
      heading_position: 2,
      title: "The Full Continuum of Travel",
      category: "publications"
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Long Distance',
      heading_position: 2,
      title: "Driving to Distractions, Recreational Trips in Private Vehicles",
      category: "publications"
    )

    Document.create(
      publication_date: Date.today,
      heading: 'Special Topic Areas',
      heading_position: 3,
      title: "Summary of Travel Trends",
      category: "publications",
      link_url: "https://trid.trb.org/view.aspx?id=1107370"
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Special Topic Areas',
      heading_position: 3,
      title: "Recent Changes and Future Directions in Travel Behavior",
      category: "publications",
      link_url: "https://www.rita.dot.gov/publications/novel_modes_workshop/part_one/McGuckin"
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Special Topic Areas',
      heading_position: 3,
      title: "Recent Changes and Future Directions in Travel Behavior",
      category: "publications",
      link_url: "https://www.rita.dot.gov/publications/novel_modes_workshop/part_one/McGuckin"
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Special Topic Areas',
      heading_position: 3,
      title: "Travel to School in California",
      category: "publications",
      link_url: "http://activelivingresearch.org/travel-school-california-findings-california-national-household-travel-survey"
    )

    Document.create(
      publication_date: Date.today - 3.days,
      heading: 'Special Topic Areas',
      heading_position: 3,
      title: "Walking and Biking in California",
      category: "publications",
      link_url: "https://trid.trb.org/view.aspx?id=1217319"
    )

    Document.create(
      publication_date: Date.today,
      heading: 'Survey Methods and Statistics',
      heading_position: 4,
      title: "Travel Estimation Techniques for Urban Planning NCHRP #365",
      category: "publications",
      link_url: "http://onlinepubs.trb.org/onlinepubs/nchrp/nchrp_rpt_365.pdf"
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Survey Methods and Statistics',
      heading_position: 4,
      title: "The Challenge of Surveying Hard-to-Reach Populations",
      category: "publications"
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Survey Methods and Statistics',
      heading_position: 4,
      title: "Trip Chains and Tours: An Operational Definition",
      category: "publications"
    )

    Document.create(
      publication_date: Date.today - 3.days,
      heading: 'Survey Methods and Statistics',
      heading_position: 4,
      title: "An Overview of Trip Generation",
      category: "publications"
    )

    Document.create(
      publication_date: Date.today - 4.days,
      heading: 'Survey Methods and Statistics',
      heading_position: 4,
      title: "Commercial Vehicle Surveys: Measure Commodities or Truck Trips?",
      category: "publications"
    )

    ####TOPIC BRIEFS####

    Document.create(
      publication_date: Date.today,
      heading: 'Demographics and Travel',
      title: "Impact of Baby Boomers on U.S. Travel",
      category: "topic_briefs",
      heading_position: 0,
      link_url: "http://www.aarp.org/ppi/issues/livable-communities/info-2015/impact-of-baby-boomers-on-us-travel-1969-2009-AARP-ppi-liv-com.html"
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Demographics and Travel',
      title: "Travel Characteristics of New Immigrants",
      category: "topic_briefs",
      heading_position: 0
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Demographics and Travel',
      title: "Mobility and the Melting Pot",
      category: "topic_briefs",
      heading_position: 0
    )

    Document.create(
      publication_date: Date.today - 3.days,
      heading: 'Demographics and Travel',
      title: "Mobility in American Life",
      category: "topic_briefs",
      heading_position: 0
    )

    Document.create(
      publication_date: Date.today - 4.days,
      heading: 'Demographics and Travel',
      title: "Sandwich Generation",
      category: "topic_briefs",
      heading_position: 0
    )

    Document.create(
      publication_date: Date.today - 5.days,
      heading: 'Demographics and Travel',
      title: "Working Retirement: An Update",
      category: "topic_briefs",
      heading_position: 0,
      link_url: "http://www.aarp.org/content/aarp/en/home/research/ppi/liv-com2/policy/transportation/articles/work-related-travel-in-an-era-of-extended-employment-AARP-ppi-liv-com.html"
    )

    Document.create(
      publication_date: Date.today - 6.days,
      heading: 'Demographics and Travel',
      title: "Aging Cars, Aging Drivers",
      category: "topic_briefs",
      heading_position: 0
    )

    Document.create(
      publication_date: Date.today - 7.days,
      heading: 'Demographics and Travel',
      title: "Caregiving Travel",
      category: "topic_briefs",
      heading_position: 0
    )

    Document.create(
      publication_date: Date.today,
      heading: 'Peak Travel and the Journey to Work',
      title: "Usual versus Actual Means of Commuting",
      category: "topic_briefs",
      heading_position: 1
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Peak Travel and the Journey to Work',
      title: "Mandatory Peak Travel",
      category: "topic_briefs",
      heading_position: 1
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Peak Travel and the Journey to Work',
      title: "Congestion",
      category: "topic_briefs",
      heading_position: 1
    )

    Document.create(
      publication_date: Date.today - 3.days,
      heading: 'Peak Travel and the Journey to Work',
      title: "Peak Travel in Select Metro Areas",
      category: "topic_briefs",
      heading_position: 1
    )

    Document.create(
      publication_date: Date.today - 4.days,
      heading: 'Peak Travel and the Journey to Work',
      title: "Auto Occupancy",
      category: "topic_briefs",
      heading_position: 1
    )

    Document.create(
      publication_date: Date.today - 5.days,
      heading: 'Peak Travel and the Journey to Work',
      title: "Tollway Use",
      category: "topic_briefs",
      heading_position: 1
    )

    Document.create(
      publication_date: Date.today - 6.days,
      heading: 'Peak Travel and the Journey to Work',
      title: "Trends in VMT",
      category: "topic_briefs",
      heading_position: 1
    )

    Document.create(
      publication_date: Date.today - 7.days,
      heading: 'Peak Travel and the Journey to Work',
      title: "Working at Home: The Quiet Revolution",
      category: "topic_briefs",
      heading_position: 1
    )

    Document.create(
      publication_date: Date.today - 8.days,
      heading: 'Peak Travel and the Journey to Work',
      title: "Pounding the Pavement Looking for Work",
      category: "topic_briefs",
      heading_position: 1
    )

    Document.create(
      publication_date: Date.today,
      heading: 'Long Distance Travel',
      title: "Homebodies and Road-Warriors",
      category: "topic_briefs",
      heading_position: 2
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Long Distance Travel',
      title: "Long Distance Travel",
      category: "topic_briefs",
      heading_position: 2
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Long Distance Travel',
      title: "Leisure Travel of People 50 and Older",
      category: "topic_briefs",
      heading_position: 2,
      link_url: " http://www.aarp.org/content/aarp/en/home/research/ppi/liv-com2/policy/transportation/articles/leisure-travel-of-the-50-plus-AARP-ppi-liv-com.html"
    )

    Document.create(
      publication_date: Date.today,
      heading: 'Transit and Emerging Modes',
      title: "Mode Share",
      category: "topic_briefs",
      heading_position: 3
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Transit and Emerging Modes',
      title: "Transit Ridership Trends",
      category: "topic_briefs",
      heading_position: 3
    )

    Document.create(
      publication_date: Date.today,
      heading: 'Active Travel and Health',
      title: "Walkable Communities",
      category: "topic_briefs",
      heading_position: 4
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Active Travel and Health',
      title: "Short Trips",
      category: "topic_briefs",
      heading_position: 4
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Active Travel and Health',
      title: "Measuring Trends in Walking",
      category: "topic_briefs",
      heading_position: 4
    )

    Document.create(
      publication_date: Date.today - 3.days,
      heading: 'Active Travel and Health',
      title: "A Comparison of Recalled and Reported Walk Trips",
      category: "topic_briefs",
      heading_position: 4
    )

    Document.create(
      publication_date: Date.today - 4.days,
      heading: 'Active Travel and Health',
      title: "Travel to School",
      category: "topic_briefs",
      heading_position: 4
    )

    Document.create(
      publication_date: Date.today - 5.days,
      heading: 'Active Travel and Health',
      title: "Performance Measurement for Active Travel",
      category: "topic_briefs",
      heading_position: 4
    )

    Document.create(
      publication_date: Date.today,
      heading: 'Special Topic Areas',
      title: "The Carbon Footprint of Daily Travel",
      category: "topic_briefs",
      heading_position: 5
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Special Topic Areas',
      title: "Energy Use and Fuel Efficiency",
      category: "topic_briefs",
      heading_position: 5
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Special Topic Areas',
      title: "Rising Fuel Costs",
      category: "topic_briefs",
      heading_position: 5
    )

    #### POWER POINTS ####

    Document.create(
      publication_date: Date.today,
      heading: 'Demographics and Travel',
      title: "Evolving Travel Behavior: Our Multi-modal Connected Future",
      category: "power_points",
      heading_position: 0
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Demographics and Travel',
      title: "Emerging Trends in US Vehicle Demand",
      category: "power_points",
      link_url: 'https://www.eia.gov/conference/2014/pdf/presentations/mcguckin.pdf',
      heading_position: 0
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Demographics and Travel',
      title: "Young People’s Changing Impact on Travel Demand",
      category: "power_points",
      heading_position: 0
    )

    Document.create(
      publication_date: Date.today - 3.days,
      heading: 'Demographics and Travel',
      title: "The Impact of Shifting Demographics on Travel Demand",
      category: "power_points",
      heading_position: 0
    )

    Document.create(
      publication_date: Date.today - 4.days,
      heading: 'Demographics and Travel',
      title: "Age, Race, and Sex in Travel Behavior",
      category: "power_points",
      heading_position: 0
    )

    Document.create(
      publication_date: Date.today - 5.days,
      heading: 'Demographics and Travel',
      title: "Trends in Older American's Travel",
      category: "power_points",
      heading_position: 0
    )

    Document.create(
      publication_date: Date.today - 6.days,
      heading: 'Demographics and Travel',
      title: "Driving Miss Daisy: Women as Passengers",
      category: "power_points",
      heading_position: 0
    )

    Document.create(
      publication_date: Date.today,
      heading: 'Peak Travel and the Journey to Work',
      title: "Peak Travel in America",
      category: "power_points",
      heading_position: 1
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Peak Travel and the Journey to Work',
      title: "A Walk Through Time: the Changing Landscape of Daily Travel",
      category: "power_points",
      heading_position: 1
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Peak Travel and the Journey to Work',
      title: "Understanding Trip Chaining - The 'Starbuck's Effect'",
      category: "power_points",
      heading_position: 1
    )

    Document.create(
      publication_date: Date.today - 3.days,
      heading: 'Peak Travel and the Journey to Work',
      title: "Sprawl of Workers and Jobs",
      category: "power_points",
      heading_position: 1
    )

    Document.create(
      publication_date: Date.today,
      heading: 'Long Distance Travel',
      title: "Interregional Travel: New Perspectives for Policy Making",
      category: "power_points",
      heading_position: 2
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Long Distance Travel',
      title: "Intercity Travel Market Analysis",
      category: "power_points",
      heading_position: 2
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Long Distance Travel',
      title: "Long Distance Data",
      category: "power_points",
      heading_position: 2
    )

    Document.create(
      publication_date: Date.today - 3.days,
      heading: 'Long Distance Travel',
      title: "Long Distance Travel Behavior - Challenges and Opportunities",
      category: "power_points",
      heading_position: 2
    )

    Document.create(
      publication_date: Date.today,
      heading: 'Active Travel and Sustainability',
      title: "The Carbon Impact of Daily Travel",
      category: "power_points",
      heading_position: 3
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Active Travel and Sustainability',
      title: "Sustainable Mobility - New Findings from the NHTS",
      category: "power_points",
      heading_position: 3
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Active Travel and Sustainability',
      title: "Active Transportation Data for Decision Making",
      category: "power_points",
      heading_position: 3
    )

    Document.create(
      publication_date: Date.today - 3.days,
      heading: 'Active Travel and Sustainability',
      title: "Active Travel in Texas",
      category: "power_points",
      heading_position: 3
    )

    Document.create(
      publication_date: Date.today - 4.days,
      heading: 'Active Travel and Sustainability',
      title: "Walking and Biking in California Summary of Findings",
      category: "power_points",
      heading_position: 3
    )

    Document.create(
      publication_date: Date.today - 5.days,
      heading: 'Active Travel and Sustainability',
      title: "Trends in Walking",
      category: "power_points",
      heading_position: 3
    )

    Document.create(
      publication_date: Date.today,
      heading: 'Survey Methods and Statistics',
      title: "Trips, Chains and Tours - An Operational Definition",
      category: "power_points",
      heading_position: 4
    )

    Document.create(
      publication_date: Date.today - 1.day,
      heading: 'Survey Methods and Statistics',
      title: "Why Collect Employment Data",
      category: "power_points",
      heading_position: 4
    )

    Document.create(
      publication_date: Date.today - 2.days,
      heading: 'Survey Methods and Statistics',
      title: "The Challenge of Surveying Hard-to-Reach Populations",
      category: "power_points",
      heading_position: 4
    )


    Document.create(
      publication_date: Date.today - 3.days,
      heading: 'Survey Methods and Statistics',
      title: "The Challenge of Surveying Hard-to-Reach Populations",
      category: "power_points",
      heading_position: 4
    )


    Document.create(
      publication_date: Date.today - 4.days,
      heading: 'Survey Methods and Statistics',
      title: "Trip Generation Discussion Working Paper",
      category: "power_points",
      heading_position: 4
    )

    Document.create(
      publication_date: Date.today,
      heading: 'Special Topics',
      title: "Recent Changes and Future Directions in Travel Behavior",
      category: "power_points",
      heading_position: 5
    )

  end
end
