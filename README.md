
<img align="right" width="250" height="250" src="https://user-images.githubusercontent.com/112206035/227010828-fba23919-b446-4ac6-ac5a-94715b43603c.jpeg">

# Final Project: Food Insecurity <dl><sub>by SQL Team 6 </sub></dl>

## Overview 

The purpose of this project is to utilize machine learning to predict and visualize food insecurity in the United States of America (US). It will also take an in-depth look at physical access to food in the US and its effects on food insecurity.

### Background
SQL Team 6 had an initial interest in New York urban agriculture and utilized this idea to begin researching agricultural datasets. Through this research a map was found on the United States Department of Agriculture’s website with many differing data points on food insecurity and related fields involving access, demographics, purchases, locations, etc.

After a reviewing the dataset, the group determined it was large enough, had potential for many interesting comparisons and trends, and had an adequate number of variables to be utilized for the machine learning model and visualization dashboard. After the data was cleaned, the group selected variables with corresponding dates and a possible relation to food insecurity.

Below outlines and explores the various elements of the Food Insecurity Project.

### Datasets

The original 2020 Food Environment Atlas dataset can be found [here](https://www.ers.usda.gov/data-products/food-environment-atlas/data-access-and-documentation-downloads/).
 [Direct download.](https://www.ers.usda.gov/webdocs/DataFiles/80526/FoodEnvironmentAtlas.xls?v=2489.7)<br>

Additional food insecurity data:<br>
[2008-2010 food insecurity data.](https://www.ers.usda.gov/webdocs/publications/44906/6893_err125_2_.pdf?v=5244)  <br>
[2009-2011 food insecurity data.](https://www.ers.usda.gov/webdocs/publications/45020/30967_err141.pdf)  <br>
[2011-2013 food insecurity data.](https://www.ers.usda.gov/webdocs/publications/45265/48787_err173.pdf)  <br>
[2014-2016 food insecurity data.](https://www.ers.usda.gov/webdocs/publications/84973/err-237.pdf?v=219.4)  <br>

Cleaned datasets used for the project:<br>
[insecurity.csv](https://github.com/macicchino/Food_Insecurity/blob/main/Datasets/insecurity.csv)<br>
[stores.csv](https://github.com/macicchino/Food_Insecurity/blob/main/Datasets/stores.csv)<br>
[restaurants.csv](https://github.com/macicchino/Food_Insecurity/blob/main/Datasets/restaurants.csv)<br>

## Supervised Machine Learning Model

Machine learning is the use of statistical algorithms to perform tasks such as learning from data patterns and making predictions. 

A number of feature variables are used on a county level for time periods from 2016 and earlier to predict food insecurity after 2017. Specifically, the goal is to predict the percentage change of food insecurity by state. The group identified the "Balanced Random Forest Classifier" and the "Easy Ensemble AdaBoost Classifier" as our best sampling methods using confusion matrices and accuracy scores. 

Two key issues with the model are balancing the heavily skewed dataset and making state level predictions using county level features.


### Model Results: Confusion Matrix and Accuracy Scores:

<details><summary>Model 1: Balanced Random Forest Classifier</summary>

<img src="Resources/Images/BalancedRandomForestClassifier.png" width=70% height=70% title="Balanced Random Forest Classifier">

</details>
<details><summary>Model 2: Easy Ensemble AdaBoost Classifier</summary>

<img src="Resources/Images/EasyEnsembleAdaBoostClassifier.png" width=70% height=70% title="Easy Ensemble AdaBoost Classifier">

</details>

### Description of Data
Our original data source is a comprehensive resource to analyze food insecurity and possible relating variables by locations including Federal Information Processing System (FIPS) Codes, counties, and states. The variables that accompany the food insecurity data include how and where consumers access food and how numerous these access points are within a given location. In addition to the original dataset, the group has acquired additional food insecurity data to help expand our analysis and predictions.

The tables below include the Stores Table, Local Table, Restaurants Table, and Insecurity Table. 

#### Tables 

<Details><Summary>Stores Table</Summary>
The Stores Table shows the percent change of grocery stores from 2011 to 2016 by FIPS, state and county.

![dev_1](Resources/Images/stores.png "Stores Image")

 </Details>

<Details><Summary>Local Table</Summary>

The Local Table shows the percent change of direct farm sales, farms with direct sales, direct farm sales per capita, farmers markets, farms with vegetables harvested for fresh markets, vegetable acres harvested for fresh markets, CSA farms and agritourism operations from 2007 to 2012 by FIPS, state, and county.

![dev_2](Resources/Images/local.png "Local Image")
 
</Details>

<Details><Summary>Restaurants Table</Summary>

The Restaurants Table shows the percent change of fast food and full service restaurants from 2011 to 2016 by FIPS, state, and county.

![dev_3](Resources/Images/restaurants.png "Restaurants Image")
 
 </Details>

<Details><Summary>Insecurity Table</Summary>

 The Insecurity Table shows the percent change of food insecurity from 2012-2017 by FIPS, state, and county.

![dev_4](Resources/Images/insecurity.png "Insecurity Image")
 </Details>

#### Table Schemas: Food Insecurity

An entity relationship diagram linking the Insecurity, Restaurants, and Stores Tables was constructed to develop a schema.

<details><summary>Column names</summary>
<p>

#### Insecurity Table

```| FIPS                           | FIPS                                                               |
| ------------------------------ | ------------------------------------------------------------------ |
| STATE                          | State                                                              |
| COUNTY                         | COUNTY                                                             |
| FOODINSEC_08_10                | Household food insecurity (%, three-year average), 2008-10\*       |
| FOODINSEC_09_11                | Household food insecurity (%, three-year average), 2009-11\*       |
| FOODINSEC_11_13                | Household food insecurity (%, three-year average), 2011-13\*       |
| FOODINSEC_12_14                | Household food insecurity (%, three-year average), 2012-14\*       |
| FOODINSEC_14_16                | Household food insecurity (%, three-year average), 2014-16\*       |
| FOODINSEC_15_17                | Household food insecurity (%, three-year average), 2015-17\*       |
| FOODINSEC_17_19                | Household food insecurity (%, three-year average), 2017-19\*       |
| CH_FOODINSEC_14-16_to_17-19    | Household food insecurity (change %),2014-16 to 2017-19\*          |
| BI_Model_answer_14-16_to_17-19 | BI_Model-Household food insecurity (change %),2014-16 to 2017-19\* |
| CH_FOODINSEC_11_14             | Household food insecurity (change %),2009-11 to 2012-15\*          |
| CH_FOODINSEC_14_17             | Household food insecurity (change %),2012-14 to 2015-17\*          |
| FOODINSEC_09_14_AVG            | Household food insecurity (%, six-year average), 2009-14\*         |
| FOODINSEC_12_17_AVG            | Household food insecurity (%, six-year average), 2012-17\*         |
| CH_FOODINSEC_09_14_TO_15_17    | Household food insecurity (change %),2009-14 to 2015-17\*          |
| CH_FOODINSEC_09_11_TO_12_17    | Household food insecurity (change %),2009-11 to 2012-17\*          |
| Model_answer_09-14_15-17       | Model-Household food insecurity (change %),2009-14 to 2015-17\*    |
| Model_answer_09-11_12-17       | Model-Household food insecurity (change %),2009-11 to 2012-17\*    |
| Model_answer_12-14_15-17       | Model-Household food insecurity (change %),2012-14 to 2015-17\*    |
| BI_Model_answer_09-14_15-17    | BI_Model-Household food insecurity (change %),2009-14 to 2015-17\* |
| BI_Model_answer_09-11_12-17    | BI_Model-Household food insecurity (change %),2009-11 to 2012-17\* |
| BI_Model_answer_12-14_15-17    | BI_Model-Household food insecurity (change %),2012-14 to 2015-17\* |
```

 #### Stores Table

```| FIPS                | FIPS                                                     |
| ------------------- | -------------------------------------------------------- |
| State               | State                                                    |
| County              | County                                                   |
| PCH_GROC_11_16      | Grocery stores (% change), 2011-16                       |
| GROCPTH11           | Grocery stores/1,000 pop, 2011                           |
| GROCPTH16           | Grocery stores/1,000 pop, 2016                           |
| PCH_GROCPTH_11_16   | Grocery stores/1,000 pop (% change), 2011-16             |
| PCH_SUPERC_11_16    | Supercenters & club stores (% change), 2011-16           |
| SUPERCPTH11         | Supercenters & club stores/1,000 pop, 2011               |
| SUPERCPTH16         | Supercenters & club stores/1,000 pop, 2016               |
| PCH_SUPERCPTH_11_16 | Supercenters & club stores/1,000 pop (% change), 2011-16 |
| PCH_CONVS_11_16     | Convenience stores (% change), 2011-16                   |
| CONVSPTH11          | Convenience stores/1,000 pop, 2011                       |
| CONVSPTH16          | Convenience stores/1,000 pop, 2016                       |
| PCH_CONVSPTH_11_16  | Convenience stores/1,000 pop (% change), 2011-16         |
| PCH_SPECS_11_16     | Specialized food stores (% change), 2011-16              |
| SPECSPTH11          | Specialized food stores/1,000 pop, 2011                  |
| SPECSPTH16          | Specialized food stores/1,000 pop, 2016                  |
| PCH_SPECSPTH_11_16  | Specialized food stores/1,000 pop (% change), 2011-16    |
```

  #### Restaurants Table

```| FIPS             | FIPS                                                   |
| ---------------- | ------------------------------------------------------ |
| State            | State                                                  |
| County           | County                                                 |
| PCH_FFR_11_16    | Fast-food restaurants (% change), 2011-16              |
| FFRPTH11         | Fast-food restaurants/1,000 pop, 2011                  |
| FFRPTH16         | Fast-food restaurants/1,000 pop, 2016                  |
| PCH_FFRPTH_11_16 | Fast-food restaurants/1,000 pop (% change), 2011-16    |
| PCH_FSR_11_16    | Full-service restaurants (% change), 2011-16           |
| FSRPTH11         | Full-service restaurants/1,000 pop, 2011               |
| FSRPTH16         | Full-service restaurants/1,000 pop, 2016               |
| PCH_FSRPTH_11_16 | Full-service restaurants/1,000 pop (% change), 2011-16 |
| PC_FFRSALES07    | Expenditures per capita, fast food, 2007\*             |
| PC_FFRSALES12    | Expenditures per capita, fast food, 2012\*             |
| PC_FSRSALES07    | Expenditures per capita, restaurants, 2007\*           |
| PC_FSRSALES12    | Expenditures per capita, restaurants, 2012\*           |
```

</p>
</details>
<details><summary>Schema</summary>

<img src="Resources/Images/Schema.png" width=100% height=100% title="Schema">

</details>


## Objective
Using this dataset the team will analyze how access to agriculture, groceries, and restaurants effects food insecurity. The group hopes to draw comparisons and craft conclusions about how physical access to food effects food insecurity. A model will also be created that predicts possible changes in food insecurity based on the original data.

### Questions
How does physical access to food through restaurants and grocery stores impact food insecurity?

#### Potential topics
- How are fast food expenditures related to food insecurity?
- Does restaurant availability contribute to lowering food insecurity?
- Which has a greater positive impact on food access, having more farmers markets or more general grocery stores?
- How does agritourism influence food insecurity?
- Do community supported farms and regular farms have differing impacts on food insecurity?

## Descriptive Analysis and Data Visualization
To explore the data travel to the [dashboard link.](https://public.tableau.com/app/profile/emery.scott/viz/FoodInsecurityDashboard/HousholdFoodInsecurityasitRelatestoPhysicalAccess?publish=yes)

Below the group shares images from the interactive dashboard and some subsequent observations.

### Percent Change in Food Insecurity Over Time
From 2008 to 2017 food insecurity decreased in all fifty states except for North Dakota, Louisiana, and West Virginia. However, North Dakota has one of the lowest  food insecurity pecentages in the country, while Mississippi has some of the highest annual food insecurity percentages in the country.

Between 2008 and 2010, the states with the lowest food insecurity percentage were North Dakota, Virginia, New Hampshire, Delaware, and Minnesota. From 2017 to 2019 the states with the lowest food insecurity percentage were Iowa, New Hampshire, and New Jersey, followed by North Dakota and Minnestota with an equal food insecurity percentage. 

Between 2008 and 2010 Mississippi, Texas, Arkansas, Alabama, and Georgia had the highest levels of food insecurity. The previously mentioned states all reduced food insecurity from 2017 to 2019, leaving Mississippi, Louisiana, West Virginia, and New Mexico as the most food insecure states for the time period.

<details><Summary>2008-2010 Map</summary>
<img width="700" alt="Screen Shot 2023-03-21 at 10 52 47 PM" src="https://user-images.githubusercontent.com/112206035/226937278-6cbac4ab-18e5-4a3a-bc71-9a4c8ac6901c.png">
</details>

<details><Summary>2017-2019 Map</summary>
<img width="700" alt="Screen Shot 2023-03-21 at 10 53 36 PM" src="https://user-images.githubusercontent.com/112206035/226937325-ff90bee9-f149-479a-97a3-8a6d2621a03f.png">
</details>


### Food Insecurity and Food Stores 
The scatter plot below shows the distribution of average percent change in grocery, convenience, specialized, and supercenters/clubstores in all fifty US states from 2011 to 2016.

<details><Summary>Scatter Plot</summary>
<img width="700" alt="Screen Shot 2023-03-21 at 10 53 20 PM" src="https://user-images.githubusercontent.com/112206035/226950706-84c1524a-27b0-437e-a03f-1f1a2347a5c9.png">

<sub> (The dashboard includes this data on both a state and county level.) </sub>
</details>

### Food Insecurity and Food Stores 
The scatter plot below shows the distribution of average percent change in full-service restaurants versus fast food-restaurants in all fifty US states from 2011 to 2016.

<details><Summary>Scatter Plot</summary>
<img width="700" alt="Screen Shot 2023-03-21 at 10 53 07 PM" src="https://user-images.githubusercontent.com/112206035/226950919-1f34eed9-c0f1-4e87-8ced-eacd6200ae45.png">

<sub> (The dashboard includes this data on both a state and county level.) </sub>
</details>

### Other Visulaizations
#### Pefcent Change in Local Agritourism Operations by State

The image below shows the change in agritourism operations versus the change in CSA farms, direct farm sales per capita, and farms with direct sales. Overall, convenience stores recorded increasing locations in a significant number of states, while grocery stores recorded diminishing numbers from 2011-2016.

<details><br><Summary>Scatter Plot</summary>
To interact with this plot use the link below:

[Tableau Link](https://public.tableau.com/views/ChangeinLocalAgritourismOperationsVrsFarmsandFarmSalesfor2007-2012byState/ChangeinLocalAgritourismOperationvrsandFarmsandFarmSalesfrom2007-2012?:language=en-US&:display_count=n&:origin=viz_share_link)
 
 <br>
<img width="1423" alt="Screen Shot 2023-03-22 at 12 01 31 PM" src="https://user-images.githubusercontent.com/112206035/226965478-f60c35ab-d7a3-4a61-b696-608fd420cfb5.png">
</details>



## Tools and Languages utilized
- Slack
- Excel
- PowerPoint
- Python
  - Jupyter Notebook 
   - Pandas Library
   - scikit-learn
   - Imbalanced-learn
- ERD Generator
- PostgresSQL
- Tableau Public
- Zoom
- Google Docs
- Google Slides
