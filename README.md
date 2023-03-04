# Overview: Food Security

### Admin: 
    Extra Meeting on Wednesday, March 8th. 
    TIME TBD
### First Segment requirements
#### Content
    A detailed README.md file (20 points)

    At least four commits per team member (20 points)

    A database that stores at least two tables (or collections) for the project (20 points)

#### Presentation
    The selected topic and the reasoning for that selection (20 points)
    
    A description of the data (20 points)
    
    The questions that the team plans to answer with the project (20 points)
    
   
### Objective:
    Project to Food Insecurity using USDA Dataset. 
    We pick a variable and create a narrow question / hypothesis. 
    
### Hypothesis:

   To predict impact of Food Insecurity 
                                       _on Health Standards?
                                       _on Fast-food?
                                       _on Agro_Tourism
                                       _on CSA Farms 
                                       

# Homework_2 : Identify Hypothesis & Data Set 

 Every has : Supplemental County, Supplemental State, and INSECURITY
 
 TO DO     : 
 
 1. Refine the assigned datasets. 
 2. Change column names , to names listed in Variables
 3. Come up at least 2 questions from cleaning the dataset. Make an informed hypothesis. 
 

## Michael C:
    - Access
    - Michael to find out column headers of Supplemental Data, see source. 

## Emery S:
    - Socio-Economic 
    - Health 
    
## Woyram A:
    - Taxes  
    - Insecurity

## Vasiliy: 
    - Assistance
    - Resturants
        |	Short	|	Long	|	Proposed	|
        |	---	|	---	|	---	|
        |	FIPS	|	FIPS	|	FIPS	|
        |	State	|	State	|	delete	|
        |	County	|	County	|	delete	|
        |	FFR11	|	Fast-food restaurants, 2011	|	fast_food_rest_2011	|
        |	FFR16	|	Fast-food restaurants, 2016	|	fast_food_rest_2016	|
        |	PCH_FFR_11_16	|	Fast-food restaurants (% change), 2011-16	|	ff_change_2011_2016	|
        |	FFRPTH11	|	Fast-food restaurants/1,000 pop, 2011	|	ff_rest_per_1K_pop_2011	|
        |	FFRPTH16	|	Fast-food restaurants/1,000 pop, 2016	|	ff_rest_per_1K_pop_2016	|
        |	PCH_FFRPTH_11_16	|	Fast-food restaurants/1,000 pop (% change), 2011-16	|	ff_rest_per_1K_pop_change	|
        |	FSR11	|	Full-service restaurants, 2011	|	rest_2011	|
        |	FSR16	|	Full-service restaurants, 2016	|	rest_2016	|
        |	PCH_FSR_11_16	|	Full-service restaurants (% change), 2011-16	|	rest_change_2011_2016	|
        |	FSRPTH11	|	Full-service restaurants/1,000 pop, 2011	|	rest_per_1K_pop_2011	|
        |	FSRPTH16	|	Full-service restaurants/1,000 pop, 2016	|	rest_per_1K_pop_2016	|
        |	PCH_FSRPTH_11_16	|	Full-service restaurants/1,000 pop (% change), 2011-16	|	rest_per_1K_pop_change	|
        |	PC_FFRSALES07	|	Expenditures per capita, fast food, 2007*	|	delete	|
        |	PC_FFRSALES12	|	Expenditures per capita, fast food, 2012*	|	delete	|
        |	PC_FSRSALES07	|	Expenditures per capita, restaurants, 2007*	|	delete	|
        |	PC_FSRSALES12	|	Expenditures per capita, restaurants, 2012*	|	delete	|



## Brenton:
    - Stores
    - Local 

### Data Source: 

See USDA Data Set interative map
        - MC to Download
        - See on github here : 

### Key Todo's

1. 



## Meeting_1 Notes

1. Review Class Project GitHub Push 

3. Come up with 2-3 Questions or Datasets to Focus on. Next meeting decide direction. 

5. What is our Goal ? 
  -  Urban Agricultural Growth - Micro Story 
  -  Global Agriculture Growth - Macro Story 

6. Challenges : 
  - What constitutes an urban farm? 
  - Indoor vs Outdoor
  - Urban vs Rural Definition 
  - Types of Farming: Monocrop , Largescale, Verticle farming, Hydro

7. Need a Dataset, What are the best candidates? 
      [1] USDA Data set 
      [2] 
 

# Homework_1 : Identify Hypothesis & Data Set 

## Michael C:

    Specific Topic : Indoor Agriculture, also known as Controlled Environment Agriculture (CEA), is a rapidly growing industry driven by the increasing  demand for locally grown produce. How has CEA production changed over the past decade in Urban areas ? What are the costs/benefits of CEA compared to traditional agriculture. 
    
    Hypothesis_1   : The growth of indoor agriculture, CEA, has grown over the past 10 years due to technological increases in efficiency. What is the Yield of CEA productions compared to traditional agriculture? 
    
    
    Hypothesis_2   :
    
    
    Data Set       : This is the best Paper and Data Sources regarding CEA for Machine Learning. 
                        - https://hal.science/hal-03502870/document
                        - https://ceaod.github.io/



## Emery S:
    
    What is the efficacy of urban agriculture relative to non-urban agricultural production?
      - Power cunsumption
      - cost efficiency
      - neccessity of urban agriculture
      - Growth of plants in a controlled environment

    Can we predict crop yield for the coming year based on past data?
      - Trends in soil changes
      - Weather trends influence
      - supply and demand based on yield
      - perhaps we select a specific loaction for crop yields or we select a specific crop and cover its growth over many locations.


## Woyram A:



## Vasily K: 

notes:
https://unionsquaregrassman.com/grassman/

https://data.ny.gov/
https://data.ny.gov/browse?q=Agricultural&sortBy=relevance
https://data.ny.gov/Economic-Development/Winter-Farmers-Markets-in-New-York-State-Map/88k7-ujm4

Contact Information	info@agriculture.ny.gov

https://farmdirectory.agriculture.ny.gov/
FarmDirectory@agriculture.ny.gov




## Brenton: 
    - What is Urban vs Rural Agriculture ? How is it defined / defined in datasets? 
    - https://www.farmers.gov/data




# Agricultural Project:   Resources, Tools and Academic Review 


## Class Examples 
- Module 14: Mapping Tools (Mapbox API & BootStrap)
  - https://github.com/macicchino/Citi_Bike_Tableau

- Module 15: Use Tableau to vizulaize
  - https://github.com/macicchino/Citi_Bike_Tableau

- Module 16 & 17: R and Big Data
  - Find very grainular data set to perform Multiple Linear Regression 

- Module 18 & 19: Machine learning / Neural Networks

## Controlled Enviroment Agriculture (CEA) : Michael Cicchino Hypothesis_1 Research

    1. General Trends of CEA Industry 
    -   https://www.maximizemarketresearch.com/market-report/controlled-environment-agriculture-market/147449/#:~:text=The%20Controlled%20Environment%20Agriculture%20Market,9.8%25%20over%20the%20forecast%20period.

    2. Problems with Data of CEA Industry 
    -   https://urbanagnews.com/blog/news/the-case-for-standardizing-reporting-and-benchmarking-yield-in-cea-facilities/

    3. Examples of using Machine Learning in the CEA industry, Academic Article
    -   https://encyclopedia.pub/entry/32766
    
    4. DataSet for CEA Industry (Small) 
    -  https://ceaod.github.io/

## DATA SOURCES

1. Key Data Set for Agricultural Data
    - https://sedac.ciesin.columbia.edu/theme/agriculture/data/sets/browse
    
    - Who doesn't like bread? 
    - https://sedac.ciesin.columbia.edu/data/set/food-twentieth-century-crop-statistics-1900-2017

1.1 https://opendataimpactmap.org/agriculture


2. Open Source Link for NYC Urban Farming Data. 
    - https://data.cityofnewyork.us/Environment/City-owned-sites-that-are-available-and-potentiall/qchy-end3
  
  
3. Philly Open Data Set for Urban Ag, Why does Philly have such good data?
    - https://www.opendataphilly.org/dataset/urban-agriculture-projects
 
 
4. HIGH SKILL LEVEL - Using r and Machine Leaning for Agricultural Data. 
    - Academic paper
    - https://hal.science/hal-03502870/document

## Academic Review

1. 2018 THESES MASTER'S Distribution, Benefits, Challenges, and Recommendations of Urban Agriculture in New York City 
    - https://academiccommons.columbia.edu/doi/10.7916/D8VX2036
2. Growing above the city: Application of open-source urban agriculture system to different boroughs in NYC
    - https://surface.syr.edu/architecture_theses/497/

3. Urban Agriculture Growth COnstraints, "Urban agriculture: a global analysis of the space constraint to meet urban vegetable demand
F Martellozzo3,1, J-S Landry1, D Plouffe1, V Seufert1, P Rowhani2 and N Ramankutty1"
    - https://iopscience.iop.org/article/10.1088/1748-9326/9/6/064025

4. Meta Analysis, "How Much Food Can We Grow in Urban Areas? Food Production and Crop Yields of Urban Agriculture: A Meta-Analysis
Florian Thomas Payen, Daniel L. Evans, Natalia Falagán, Charlotte A. Hardman, Sofia Kourmpetli, Lingxuan Liu, Rachel Marshall, Bethan R. Mead, Jessica A. C. Davies"
    - https://agupubs.onlinelibrary.wiley.com/doi/10.1029/2022EF002748
