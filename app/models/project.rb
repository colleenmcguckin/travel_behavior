# == Schema Information
#
# Table name: projects
#
#  id               :integer          not null, primary key
#  title            :string
#  description      :text
#  category         :string
#  publication_date :date
#  link             :string
#  link_text        :string
#  created_at       :datetime
#  updated_at       :datetime
#

class Project < ActiveRecord::Base

  CATEGORIES = ['National', 'Airport and Rail/Long-Distance', 'Travel Demand Trends', 'Sustainability, Health and Safety', 'Regional Master Plan', 'Other']

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true

  def self.create_default_records!

      Project.create!(
        category: 'National',
        title: 'National Household Travel Survey (for FHWA with Westat)',
        description: "Part of the project team to help with the re-design of the most recent National Household Travel Survey (the 7th since 1977 in the series).  Primarily engaged in quality control and trends analysis as the survey moves from RDD-CATI to ABS-web retrieval.  Will be responsible for the production of “Summary of Travel Trends” which is the flagship report for the data series (TBP)",
        link: "http://nhts.ornl.gov/"
      )

      Project.create!(
        category: 'National',
        title: 'Emerging Trends in Vehicle Demand (for Energy Information Agency)',
        description: "Recent shifts in travel behavior impact forecasts of energy use and GHG emissions, as well as global oil demand. The changes in vehicle demand result from major demographic, economic, and technological forces that are and will continue to impact travel behavior into the foreseeable future. This analysis focused on millennials and their emerging adulthood, differing attitudes about travel and mode choice, and especially the effect of information and communication technology. The results were presented at the EIA Energy Conference 2014.",
        link: "www.eia.gov/conference/2014"
      )

      Project.create!(
        category: 'National',
        title: 'National Surface Transportation Policy and Revenue Study Commission (for FHWA)',
        description: "Contributed trend analysis and wrote briefing papers (included in the final report) detailing critical demographic impacts on passenger vehicle demand.  The briefing papers covered the impact of the aging population on VMT, migration within the US, immigration and travel characteristics of new immigrants, and the growth of non-work travel relative to commuting.  The background data was instrumental in the commission’s understanding of the future revenue projections.",
        link: 'http://transportationfortomorrow.com/final_report/pdf/volume_3/technical_issue_papers'
      )

      Project.create!(
        category: 'National',
        title: 'A Business Case for Public Transit Research: Evaluating the Transit Cooperative Research Program (for APTA with Victoria Transport Policy Institute)',
        description: "This is a detailed analysis of the value of the TCRP program as a federal program that provides practical guidance on ways to improve public transit services. The findings showed that TCRP research provides savings and financial benefits to transit service providers and governments, more responsive transport planning, improved transit services, external transportation benefits, tax savings and support for economic development objectives. These benefits are widely distributed across all types of communities, including cities, suburbs, small towns and rural areas; in fact, smaller communities with limited planning resources are particularly dependent on TCRP resources.",
      )

      Project.create!(
        category: 'National',
        title: 'National Institute of Standards and Technology World Trade Center Investigation (for NIST with NuStats)',
        description: "Helped develop a model of occupant behavior and egress during the evacuation of the World Trade Centers on 9/11. Used sociological behavioral modeling to determine the factors and social processes (the major paths of casual links between variables) that influenced people to delay their evacuation out of World Trade Center Towers 1 and 2.  Evacuation delay was found to be positively correlated with ‘helping behaviors’, and a five minute or more delay was found to be significant in increased mortality.  The findings are being used to both set standards for emergency egress in large buildings and to develop better training information for employee emergency preparedness.",
        link: "http://wtc.nist.gov/NISTNCSTAR1CollapseofTowers.pdf"
      )

      Project.create!(
        category: 'National',
        title: 'National Household Travel Survey 1990-2009 (Federal Highway Administration)',
        description: "Served as a lead technical consultant for the NHTS team from 1995 through 2011.   trafficAnalyzed data collection methods and results, including: impact of trip rostering (adjustment to 1990), effect of diary and incentives (1995), comparison of address-based and RDD, prospective long-distance trip reporting vs. retrospective reporting (2001) and cell-phone only sample (2009). Instrumental in the Energy Information Administration (EIA-DOE) gas cost and fuel efficiency additions to the 2001 and 2009 vehicle file. Conducted user outreach to stakeholders and topic experts for questionnaire development (2001 and 2009). Coordinated the add-on program with States and MPOs (2001 and 2009). Provided analysis of survey results through policy briefs, reports, presentations, and satisfied a broad range of data user requests. Briefs and publications available.",
        link: "http://nhts.ornl.gov"
      )

      Project.create!(
        category: 'Airport and Rail/Long-Distance',
        title: 'MapLAX --the major re-construction of Los Angeles Airport (for LAWA with Parsons-Brinkerhoff)',
        description: "Helped design and then analyzed primary data (including a gamified web-based stated preference survey) to assess the potential modal shifts when new alternatives are available, including a new people mover.  Data mining and analysis fused stated preference and large-sample passenger data to prepare critical data for decision-makers and informational ‘briefs’—short communications to the major stake-holders.",
        link: "www.lawa.org/laxdev/ProjectFactSheet.aspx"
      )

      Project.create!(
        category: 'Airport and Rail/Long-Distance',
        title: "DFW-Love Field Passenger Survey (for NCTCOG with Unison)",
        description: "After the lifting of the Wright restrictions on travel from Love Field, the local planning agencies sponsored a survey and analysis to help determine the traffic shift both in terms of passenger boardings (originations) and also local traffic demand shifts between airports.  Helped design passenger surveys for both airports, including sample design and weighting. Conducted detailed analysis of results."
      )

      Project.create!(
        category: 'Airport and Rail/Long-Distance',
        title: "Baltimore-Washington International Airport Transportation Planning Study (for MTA with Barton-Aschman Assoc.)",
        description: "Developed a land-use inventory for the BWI area. Designed and conducted an employer/employee airsurvey to understand work-based travel and possible transit shifts. Forecast future population, land-use, and employment by zone in five-year increments based on committed and proposed development and the analysis of present and projected zoning."
      )

      Project.create!(
        category: 'Airport and Rail/Long-Distance',
        title: "Intercity Travel Market Analysis (for TRB special Committee for a Study of Intercity Passenger Travel Issues and Opportunities in Short-haul Markets)",
        description: "Analyzed inter-regional travel (trips of 100-500 miles) using the American Travel Survey to help assess characteristics of inter-city travel and opportunities for high-speed rail in the US.",
        link: "http://www8.nationalacademies.org/cp/projectview.aspx?key=49453"
      )

      Project.create!(
        category: 'Airport and Rail/Long-Distance',
        title: "NCHRP Report 735 Long Distance and Rural Travel Transferable Parameters for Statewide Travel Forecasting Models (for NCHRP with Cambridge Sytematics)",
        description: "This guidebook presents transferable long-distance data for travel demand forecasting model inputs (both intercity and longer distance attributes).  Long distance travel is composed of disparate purposes: business and leisure, which exhibit different patterns and characteristics.  In addition, this guidebook presents the first rural trip generation estimates developed from the extensive rural coverage of the 2009 NHTS.",
        link: "http://www.trb.org/TRBNet/ProjectDisplay.asp?ProjectID=2960"
      )

      Project.create!(
        category: 'Airport and Rail/Long-Distance',
        title: "Bangkok, Thailand MRTA Ridership Forecasts (with Barton-Aschman/Deleuw Cather)",
        description: "This was a World Bank project bringing together an international consortium of economists, engineers, and specialists to develop ridership estimates for a new elevated rail system in downtown Bangkok.  Ms. McGuckin was the in-country (Thailand) task manager for a major data collection effort. Specialty approaches included sample estimation for Census non-coverage areas (squatters), employee surveys for sites near potential future stations, intercept surveys of visitors, and an on-board survey for three transit vehicle types. All designs included stated preference components to help estimate future fare strategies. With Barton-Ashman Associates/DeLeuw Cather."
      )

      Project.create!(
        category: 'Airport and Rail/Long-Distance',
        title: "San Juan Metropolitan Region Planning Study to Develop Ridership Forecasts for Tren Urbano San Juan, Commonwealth of Puerto Rico (with Barton-Aschman/Deleuw Cather)",
        description: "The Tren Urbano was funded through multiple sources as both a transportation project—to relieve the congestion of the San Juan Urban Area--and as urban renewal/economic stimulus. Ms. McGuckin was the in-country project manager for day-to-day primary data collection and project operations in San Juan for two years, including a suite of surveys for model development (residential and commercial, as well as land-use inventory and forecasts)."
      )

      Project.create!(
        category: 'Airport and Rail/Long-Distance',
        title: "Super-Speed Ground Transportation System; Los Angeles to Las Vegas (with Barton-Aschman and University of Nevada, Las Vegas)",
        description: "The City of Las Vegas, Nevada conducted a detailed analysis of the potential ridership level of passengers who would travel on a super-speed magnetic-levitation ground transportation system in the Las Vegas/Ontario (California) corridor. Ms. McGuckin was on the team that reviewed the findings of the feasibility study, collected new data in the corridor, and developed new ridership estimates for work and recreation (non-work). Intercept survShanghaieys of people traveling between Las Vegas and Ontario, California, were conducted in concert with stated preference and attitudinal surveys of households in the catchment areas in Southern California and Nevada."
      )

      Project.create!(
        category: 'Airport and Rail/Long-Distance',
        title: 'Shanghai Comprehensive Transportation Planning, City of Shanghai, PRC (Barton-Aschman/DeLeuw Cather)',
        description: "Ms. McGuckin managed the U.S.-based data team to develop a city-wide plan and ridership forecasts for the high speed rail from Long Yang Road Metro Station to the Pudong International Airport (opened in 2002). Ms. McGuckin worked closely with the PRC team to collect and analyze existing data on population and employment. ",
      )

      Project.create!(
        category: 'Travel Demand Trends',
        title: 'Commuting in America IV (for AASHTO with Cambridge Systematics)',
        description: "The most recent in the quintessential series on commuter behavior, this document (published as a series of 12 ‘Briefs’) tells the story of America’s commuting trends and patterns over the last fifty years. In addition to extensive analysis, this set of reports helps us recognize thJourney to Workat work travel is an economic and social phenomenon that reflects a dynamic and productive society in the midst of massive change. This is a valuable reference for the transportation community—practitioners, researchers, and decision makers—who wish to understand how individual behavior and public policies have affected, and will continue to affect, commuting patterns.",
        link: "http://traveltrends.transportation.org/Pages/default.aspx"
      )

      Project.create!(
        category: 'Travel Demand Trends',
        title: 'Impact of Baby Boomers on US Travel, 1969-2009, published by AARP Public Policy Institute 2012',
        description: "This is one of a series of reports for AARP Public Policy Institute which received widespread media coverage.  The cohort study of Baby Boomers through the NHTS data series (1969 through 2009) identified some of the major transportation choices in response to economic and demographic life-stages.  Forecasts of the behavior of older drivers—and equally important those who age past driving—have critical policy implications.",
        link: "http://www.aarp.org/content/dam/aarp/research/public_policy_institute/liv_com/2012Travel"
      )

      Project.create!(
        category: 'Travel Demand Trends',
        title: "Summary of Travel Trends: 2009 National Household Travel Survey (Publication no. FHWA-PL-11-02)",
        description: "This report is the textbook of changes in some of the major areas of travel behavior over a period of 40 years—1969 to 2009--obtained in the national travel survey series. A wide range of topics are covered, including trends in travel related to household size and wealth, trends in travel behavior by different age groups, changes in the amount and type of travel for different purposes, and travel behavior of special populations.  Margins of error were developed for all travel statistics to separate data ‘noise’ from true trends.",
        link: "http://nhts.ornl.gov/2009/pub/stt.pdf"
      )

      Project.create!(
        category: 'Travel Demand Trends',
        title: "Journey-to-Work Trends in the United States and Its Major Metropolitan Areas, 1960 – 2000 (Publication no. FHWA-EP-03-058)",
        description: "This research on 40 years of trends in the journey-to-work data including analysis of demographic, worker characteristics, and land-use changes in the U.S. as a whole and the 49 MSAs of one-million residents or more.",
        link: "http://www.fhwa.dot.gov/planning/census_issues/ctpp/data_products/journey_to_work/"
      )

      Project.create!(
        category: 'Travel Demand Trends',
        title: "Travel Estimation Techniques for Urban Planning NCHRP Report 365",
        description: "One of the authors/primary investigators for this textbook on the application of travel data to the travel demand forecasting models.  Researched the relationship between trip generation and urban form, trip chaining, and the changes in travel patterns observed since the publication of NCHRP 187 “Quick-Response Urban Travel Estimation Techniques and Transferable Parameters.”  Conducted a survey of MPO model needs and analyzed the transferability over time and across geography of critical travel demand statistics. With Barton-Ashman Associates, published in 1998.",
        link: "http://ntl.bts.gov/lib/21000/21500/21563/PB99126724.pdf"
      )

      Project.create!(
        category: 'Sustainability, Health and Safety',
        title: "Travel to School in California — Findings from the California Add-on to the 2009 NHTS.",
        description: "This detailed analysis of the characteristics of children’s travel to school is a first for the State of California.  Careful analysis of variance allowed patterns of children’s travel to school to be estimated for all the larger counties and metro planning areas in California. Findings were critical for line-item finding for the Safe Routes to School Program during state budget cuts. Sponsored by the National Partnership and published (2013) through Active Living Research.",
        link: "http://www.activelivingresearch.org/node/12923"
      )

      Project.create!(
        category: 'Sustainability, Health and Safety',
        title: "Complete Streets and Travel Behavior (for California Air Resources Board with UCLA)",
        description: "Part of the UCLA School of Public Health researcher team and overseeing the primary data collection in support of the research objective: Identifying the characteristics that make urban roadways walkable and bikeable.  The study design is a “difference in difference” (DID) to directly compare travel on multi-modal infrastructure with that on more traditionally designed arterial streets in the larger Los Angeles region. In addition, some stated preference factors—such as the effect of wide sidewalks, shade, and feeling safe and secure—are included to help rank the power of various attributes."
      )

      Project.create!(
        category: 'Sustainability, Health and Safety',
        title: "Understanding Older Drivers: An Examination of Medical Conditions, Medication Use, and Travel Behavior (for AAA Safety Foundation with the Urban Institute)",
        description: "This research focused on the effects of mobility impairments and medication use on driving behavior.  One out of six drivers on the road in the United States are 65 and older, and older people experience more crashes and suffer higher injury and fatality risks. My role was in data mining the NHTS to look at self-regulating behaviors by senior drivers who reported a medical condition.",
        link: " https://www.aaafoundation.org/understanding-older-drivers-examination-medical-conditions-medication-use-and-travel-behavior"
      )

      Project.create!(
        category: 'Sustainability, Health and Safety',
        title: "Sustainable Community Performance Measures, Pasadena, CA (for Pasadena DOT).",
        description: "As part of the mobility segment of the update to the General Plan, the California add-on to the National Household Travel Survey (CA-NHTS), the American Community Survey (ACS), and the Longitudinal Employment Housing Dynamics (LEHD) were used to provide the City with a data package of recent local travel behavior.  Transferable data were used to estimate census tract-level and neighborhood CO2 or greenhouse gas emissions.  These estimates are being used in two ways: as benchmark performance measures for the goal of being a sustainable community, and to develop community outreach materials to encourage behavior shifts to sustainable travel.",
        link: "http://cityofpasadena.net/GeneralPlan/Metrics_Report/"
      )

      Project.create!(
        category: 'Sustainability, Health and Safety',
        title: "Walking and Biking in California: Analysis of California Add-on to the 2009 NHTS (for Caltrans with UC-Davis)",
        description: "California had the highest pedestrian fatality rate (per population) in the country, and did not have data to answer a simple question: was it because people walked more in California than other states? This research helped develop ‘denominator’ statistics on the amount of miles and minutes of walking for the state and its counties to calculate the fatality rate based on exposure. People in California walk about ten percent more than people in other states (except New York), but the factors that influence active travel include both the quality of the environment and the characteristics of the individual.  This project is helping to advance the goals of the California Blueprint for Bicycling and Walking and the implementation of the Strategic Highway Safety Plan.",
        link: "http://pubs.its.ucdavis.edu/publication_detail.php?id=1661"
      )

      Project.create!(
        category: 'Regional Master Plan',
        title: "Technical Advisory Committee, New York Metropolitan Planning Committee Regional Travel Survey 2010-2012 (for NYMTC)",
        description: "Ms. McGuckin served as part of an expert panel to oversee the design and conduct of the regional travel survey.  Work included reviewing the sample plan, materials, website and outreach, identifying methods to target low response areas, issues related to GPS recruitment and data retrieval, final data quality control methods, weighting and final report.    The TAC met in New York 6 times and had interim conference calls, as well as a ftp site to share and download documents.  This site included a chat feature that the TAC members could use to discuss different philosophies, findings, and suggestions."
      )

      Project.create!(
        category: 'Regional Master Plan',
        title: "Dallas-Ft. Worth Workplace Survey (for NCTCOG)",
        description: "Responsible for design, quality control, weighting and analysis of the survey of 270 sites in the Metroplex. Developed a sample methodology that is not skewed towards larger-sized workplaces. Designed and conducted a test of reported auto-occupancy of walk-ins vs. observed auto-occupancy of drive-throughs for restaurants and banks offering drive-through facilities. With Barton-Ashman Associates."
      )

      Project.create!(
        category: 'Regional Master Plan',
        title: "Atlanta Regional Commission Establishment Survey (for ARC)",
        description: "Project manager for this large-scale survey of 270 establishments sampled across area-type in the Atlanta region. Developed the sample design, coordinated with the regional travel model for air-quality analysis, analyzed, weighted and presented the results. With Barton-Ashman Associates."
      )

      Project.create!(
        category: 'Regional Master Plan',
        title: "Chicago Master Plan Update Study on Intermodal Truck Travel (for CDOT)",
        description: "Designed and managed this survey feeding into an economic analysis of the impact and the benefit of the growing intermodal industry in the greater Chicago region. Sites included O’Hare International Airport cargo area.  The survey results were submitted to ITE for development of intermodal yard trip rates as a new category. With Barton-Ashman Associates."
      )

      Project.create!(
        category: 'Regional Master Plan',
        title: "New Orleans Mode Choice Model Update (for the NO Regional Planning Commission)",
        description: "Designed and conducted successful data collection for a tourist travel demand sub-model, including visitor survey and transit on-board survey. Visitor survey was conducted in the French Quarter and utilized creative techniques to improve response and accuracy. Special analysis found there was an imbalance for mode of access and egress for visitors. With Barton-Ashman Associates."
      )

      Project.create!(
        category: 'Other',
        title: "Charlotte On-Board Bus Survey (for CDOT)",
        description: "Managed the full system on-board bus survey, and including a smaller sample on-board with the Special Transportation Service (para transit service) including a verbal interview component with para-transit riders and their attendants/aids. With Barton-Ashman Associates."
      )
    end

end
