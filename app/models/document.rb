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

  CATEGORIES = %w[publications topic_briefs power_points]

  attachment :pdf

  validates :title, presence: {message: 'Title the document.'}, on: :create
  validates :category, presence: {message: 'Pick the category.'}, on: :create
  validates :publication_date, presence: {message: 'Pick the publication date, or today.'}, on: :create

  def self.create_default_records!
    Document.create(
      publication_date: Date.today,
      title: "Summary of Travel Trends—National Household Travel Survey",
      category: "publications",
      summary: "This comprehensive analysis of 40 years of travel behavior uses the national data series (1969 to 2009) to analyze trends in demographics, mode, commuting, and vehicle fleet composition and use.  In addition, trends in travel behavior of special populations, such as internet shopping by households with children, and travel by older and younger cohorts, and trends in gas costs per household are presented."
    )

    Document.create(
      publication_date: Date.today,
      title: "Driving Miss Daisy: Women as Passengers",
      category: "publications",
      summary: "This peer-reviewed paper forecasts the effect of the longevity revolution on the future mobility of the US population.  Currently, the majority of people live in suburban and rural areas where personal travel options besides private vehicles are few.  This study explores the travel behavior of older, non-drivers, forecasts the future non-driver population, and discusses policy implications of this potential crisis in older mobility."
    )

    Document.create(
      publication_date: Date.today,
      title: "The Carbon Footprint of Daily Travel",
      category: "publications",
      summary: "This accessible, descriptive article explains the role of passenger travel in the total amount of carbon emissions from transportation in the U.S. The analysis examines trends in fuel efficiency and gas costs, and their effect on vehicle travel.  The article ends with some thoughts on future directions."
    )

    Document.create(
      publication_date: Date.today,
      title: "The Work Trip in the Context of Daily Travel",
      category: "publications",
      summary: "This commissioned research examines the role of the work trip in modern life.  Recent data shows that travel to work may account for less than one out of five trips, and that over one-third of all households have no worker.  Transportation planners continue to rely on estimates of work travel as the basis of travel demand forecasting.  This paper discusses the role of the work trip, how it has changed over time, and whether it is still relevant to current travel behavior."
    )

    Document.create(
      publication_date: Date.today,
      title: "Travel Demand in the Context of Growing Diversity",
      category: "publications",
      summary: "A specially-commissioned article presents findings on the differences in travel behavior across different race and ethnic groups, including immigrants. The shifts in the US population that are increasing diversity, the adaptation of newer immigrants to typical American travel behavior, and the effect of increasing diversity on future travel is discussed."
    )

    Document.create(
      publication_date: Date.today,
      title: "Peak Travel in America",
      category: "publications",
      summary: "This peer reviewed paper untangles congestion by dividing travel during the peak morning and evening into mandatory, including direct trips to work and trips with intermediary stops;  maintenance, including dropping children at school or going to the doctor or dentist; and discretionary, such as stopping at the gym or for breakfast.  The amount and characteristics of each of these contributors to peak travel are presented for the morning and afternoon period and reflections on the future of congestion are discussed."
    )

    Document.create(
      publication_date: Date.today,
      title: "The 'Starbucks Effect' -- Pursuit of a Grande Latte May Be Stirring Up Gridlock",
      category: "publications",
      summary: "National coverage of this topical research concluded that “the national craving for gourmet coffee may be adding mileage to the morning rush hour. And the numbers might be significant enough to complicate efforts to reduce traffic congestion, save fuel and reduce air pollution."
    )

    Document.create(
      publication_date: Date.today,
      title: "An Exploration of the Internet’s Effect on Travel",
      category: "publications",
      summary: "It is clear that the Internet, like other paradigm-shifting technologies, is going to change travel behavior as it changes Americans lifestyles. The relationship between the Internet and travel is complex and a new paradigm is needed. In addition, important issues such as the impact of e-commerce on home delivery of goods, and the Internet as a possible explanation for shifts in time use, are not well understood. This independent research shows that we may be seeing trends in the amount of time spent at home for younger people, especially men. Data is compiled from the National Household Travel Survey (NHTS), the USPS Household Diary Study (HDS), the Current Population Survey (CPS), and American Time Use Survey (ATUS). Analysis conducted by Contrino, H. and McGuckin, N."
    )

    Document.create(
      publication_date: Date.today,
      title: "Long Distance Travel",
      category: "publications",
      summary: 'Excerpt: “Overall, about 2.6 billion long-distance trips are taken by U.S. residents every year. These are trips of 50 miles or more away from home (100 miles in round-trip distance) for people of all ages, by all modes of travel, and for any purpose, Many people never travel that far from home--169 million people (61 percent of the population) do not make any long distance trips in an average year. In fact, just 5 percent of the population takes 25 percent of the long distance trips...."'
    )

    Document.create(
      publication_date: Date.today,
      title: "Working Retirement—Travel Trends of the Aging Workforce",
      category: "publications",
      summary: 'Excerpt: "In a few years, the first of the baby boom generation (the 76 million of Americans born between 1946 and 1964) will reach traditional retirement age. The generation that overflowed schools in their early years and generated a suburban housing boom in their middle years will possibly change the nature of travel and commuting as they shift into ‘working retirement"'
    )

    Document.create(
      publication_date: Date.today,
      title: "Demographics Matter: Travel Demand, Options, and Characteristics Among Minority Populations",
      category: "publications",
      summary: 'This article discusses the implications of the changing demographic patterns on transportation in the US, including travel behavior, public policy, aging, cultural patterns, safety, immigration, air quality and traffic volume, travel needs and infrastructure development.'
    )

    Document.create(
      publication_date: Date.today,
      title: "Is Congestion Slowing us Down?",
      category: "publications",
      summary: 'Excerpt: "Congestion reduces mobility and increases auto-operating costs, adds to air pollution, and causes stress. Congestion is considered one of the major urban transportation problems. Americans are spending more time to travel about the same distance in an average day (all trips for all purposes). The average driver spends over an hour a day behind the wheel, 24 percent more time than in 1990 ."'
    )

    Document.create(
      publication_date: Date.today,
      title: "Poverty and Mobility in America",
      category: "publications",
      summary: 'Excerpt: "The tragedy in New Orleans after Hurricane Katrina showed how people in poverty are metaphorically and literally immobilized—stuck in place because of lack of resources. Although an emergency planner can tell you that there are always people who stay behind during an evacuation—because they "didn’t hear" the evacuation warning, or had weathered storms before and thought they could do it again, or even for the fact that most shelters don’t accept pets, in New Orleans the number of people who didn’t evacuate was multiplied dramatically by the city’s high number of people without cars. Over 125,000 people in the City of New Orleans lived in families where no one had access to a vehicle. Of course, many of those families were poor, and many poor families are poorest right before the first of the month when government assistance checks typically arrive (Katrina hit on the 29 of September). People in poverty, those without cars, the elderly who live alone, and people with language or transportation disabilities have special daily travel patterns and may have special mobility issues. Understanding the needs of the most vulnerable in our population goes to the heart of the ideal of mobility, and tests the heart of our nation. Equity in transportation and security binds the nation together, while inequity divides us..." research conducted by Liss, S., McGuckin, N, and Srinivasan, N., 2006.'
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
