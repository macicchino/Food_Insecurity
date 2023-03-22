
# Final Project: Food Insecurity <dl><sub>by SQL Team 6</sub></dl>
<img width="1165" height="250" alt="Produce" src="https://user-images.githubusercontent.com/112206035/223837617-92232bb1-3bd4-4c3b-bee0-421ffb1c9f1a.png">

## Overview 
The purpose of this project is to utilize machine learning to predict and visualize food insecurity in the United States of America. It will also take an in depth look at physical access to food in the US and its effects on food insecurity.

### Background
SQL Team 6 had an initial interest in New York Urban agriculture and utilized this idea as a promt to begin researching agricultural datasets in general. Through this research a map was found on the United States Department of Agriculture’s (USDA) website with many differing data points on food insecurity and related fields involving access, demographics, purchases, locations, etc.. 

In taking a further look at the dataset the group determined it was large enough, had potential for many interesting comparisons and trends, and had an adequate number of variables to be utilized for the machine learning model and visualization dashboard. The data was cleaned and the group selected the variables to use based on dates and the groups interest in how the variables related to changes in food insecurity.

Below, we shall outline and delve into the various elements of the Food Insecurity Project.

### Dataset
SQL Team Six originally expressed interest in agricultural data and found a comprehensive data set from the United States Department of Agriculture. It contains country wide information on food insecurity and its related areas on a state and county level. 

The original 2020 Food Environment Atlas dataset can be found [here](https://www.ers.usda.gov/data-products/food-environment-atlas/data-access-and-documentation-downloads/).
Direct download [here.](https://www.ers.usda.gov/webdocs/DataFiles/80526/FoodEnvironmentAtlas.xls?v=2489.7)<br>


[2008-2010 food insecurity data](https://www.ers.usda.gov/webdocs/publications/44906/6893_err125_2_.pdf?v=5244)  <br>
[2009-2011 food insecurity data](https://www.ers.usda.gov/webdocs/publications/45020/30967_err141.pdf)  <br>
[2011-2013 food insecurity data](https://www.ers.usda.gov/webdocs/publications/45265/48787_err173.pdf)  <br>
[2014-2016 food insecurity data](https://www.ers.usda.gov/webdocs/publications/84973/err-237.pdf?v=219.4)  <br>

Datasets used for the project:<br>
[insecurity.csv](https://github.com/macicchino/Food_Insecurity/blob/main/Datasets/insecurity.csv)<br>
[stores.csv](https://github.com/macicchino/Food_Insecurity/blob/main/Datasets/stores.csv)<br>
[restaurants.csv](https://github.com/macicchino/Food_Insecurity/blob/main/Datasets/restaurants.csv)<br>

### Supervised Machine Learning Model:

Machine learning is the use of statistical algorithms to perform tasks such as learning from data patterns and making predictions. 

We use a number of feature variables, on a county level for time periods from 2016 and earlier to predict food insecurity after 2017. Specifically, we look to predict the binary change of the food insecurities increase of decrease by State. We identified The Balanced Random Forest Classifier and the Easy Ensemble AdaBoost Classifier as our best sampling methods using Confusion Matrices and Accuracy Scores. 

Two key issues with the model are balancing the heavily skewed dataset and making state level predictions using county level features.


### Model Results: Confusion Matrix and Accuracy Scores:

<details><summary>Model 1: Balanced Random Forest Classifier</summary>

<img src="Resources/Images/BalancedRandomForestClassifier.png" width=70% height=70% title="Balanced Random Forest Classifier">

</details>
<details><summary>Model 2: Easy Ensemble AdaBoost Classifier</summary>

<img src="Resources/Images/EasyEnsembleAdaBoostClassifier.png" width=70% height=70% title="Easy Ensemble AdaBoost Classifier">

</details>

### Description of Data
The tables below include Stores Table, Local Table, Restaurants Table and Insecurity Table. 

### Tables 

**Stores Table**
The Stores Table shows the change by percentage(%) of Grocery stores from 2011 to 2016 by FIPS, State and County.

![dev_1](Resources/Images/stores.png "Stores Image")

**Local Table**

 The Local Table shows the change by percentage(%) of Direct Farm Sales, Farms with Direct Sales and Direct Farm Sales per capita, Farmers Markets, Farms with vegetables harvested for fresh markets, Vegetable acres harvested for fresh markets, CSA Farms and Agritourism operations from 2007 to 2012 by FIPS, State and County.

![dev_2](Resources/Images/local.png "Local Image")

**Restaurants Table**

 Restaurants Table shows the change by percentage(%) in Fast Food  and Full Service Restaurants from 2011 to 2016 by FIPS, State and County.

![dev_3](Resources/Images/restaurants.png "Restaurants Image")

**Insecurity Table**

 Insecurity Table shows the change by percentage(%) of Food Insecurity, C from 2012-2017 by FIPS, State and County.

![dev_4](Resources/Images/insecurity.png "Insecurity Image")

### Table Schemas

**Insecurity Schema**

The Entity Relationship Diagram linking the Insecurity, Restaurants, Local and Stores Data was constructed to develop a Schema for the 3 tables (as shown in the image below)

<details><summary>Column names:</summary>
<p>

#### Insecurity Table:

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

 #### Stores Table:

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

  #### Restaurants Table:

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
From the above data set the team will look at agriculture, general grocery access, and the restaurant industry as it relates to food insecurity. With this data, the group hopes to draw comparisons and craft conclusions about how physical access to food influences food insecurity. A model will also be created that predicts possible changes in food insecurity based on the original data.

### Questions
How does physical access to food through restaurants and grocery stores impact food insecurity?

#### Potential topics
- How are fast food expenditures related to food insecurity?
- Does restaurant availability contribute to lowering food insecurity?
- Which has a higher positive impact on food access: having more farmers markets or more general grocery stores?
- How does agritourism influence food insecurity?
- How do community supported farms versus regular farms have an impact?

## Descriptive Analysis and Data Visualization

[Dashboard Link](https://public.tableau.com/app/profile/emery.scott/viz/FoodInsecurityDashboard/HousholdFoodInsecurityasitRelatestoPhysicalAccess?publish=yes)

### Change in Food Insecurity Over Time (% Change)
From 2008 to 2017 food insecurity decreased in all fifty states except for North Dakota, Louisiana and West Virginia. North Dakota however has one of the lowest pecentages accross the country while Mississippi has some of the highest percentages in food insecurity accross the country for every year.

Between 2008 and 2010, the states with the lowest levels recorded for food insecurity were North Dakota, Virginia, New Hampshire, Delaware, and Minnesota. From 2017 to 2019 the states with the lowest levels of food insecurity were Iowa, New Hampshire, and New Jersey with North Dakota and Minnestota having the same amount of food insecurity. 

Between 2008 and 2010 Mississippi, Texas, Alabama, Arkansas, and Georgia had some of the highest levels of food insecurity. They all decreased from 2017 to 2019 and the new highest states are Mississippi, Louisiana, West Virginia and New Mexico.

<img width="700" alt="Screen Shot 2023-03-21 at 10 52 47 PM" src="https://user-images.githubusercontent.com/112206035/226937278-6cbac4ab-18e5-4a3a-bc71-9a4c8ac6901c.png">

<img width="700" alt="Screen Shot 2023-03-21 at 10 53 36 PM" src="https://user-images.githubusercontent.com/112206035/226937325-ff90bee9-f149-479a-97a3-8a6d2621a03f.png">

### Food Insecurity and Food Stores 
The scatter plot below shows the distribution of change by percentage(%) in Grocery, Convenience, Specialized and Supercentres/Clubstores across all 50 states in the USA from 2011 to 2016.

<img width="700" alt="Screen Shot 2023-03-21 at 10 53 20 PM" src="https://user-images.githubusercontent.com/112206035/226950706-84c1524a-27b0-437e-a03f-1f1a2347a5c9.png">

### Food Insecurity and Food Stores 
The scatter plot below shows the distribution of change by percentage(%) in full-service restaurants verses fast food-restaurants across all 50 states in the USA from 2011 to 2016.

<img width="700" alt="Screen Shot 2023-03-21 at 10 53 07 PM" src="https://user-images.githubusercontent.com/112206035/226950919-1f34eed9-c0f1-4e87-8ced-eacd6200ae45.png">

### Other Visulaizations
#### Change in Local Agritourism Operations by State(%)

The image below shows Change in Agritourism Operations versus Change in CSA Farms, Direct Farm Sales per Capita and Farms with Direct sales as shown below. Convenience stores overall, recorded increasingly higher changes in a significant number of states while grocery stores across the USA rather recorded negatively diminishing number of stores from 2011-2016 as shown below. 

![Change in Local Agritourism Operation vrs and Farms and Farm Sales](https://user-images.githubusercontent.com/114967995/225686585-608856ad-e52f-4a34-8e96-65548436e191.png)

[Seperate Dashboard Link](https://public.tableau.com/views/ChangeinLocalAgritourismOperationsVrsFarmsandFarmSalesfor2007-2012byState/ChangeinLocalAgritourismOperationvrsandFarmsandFarmSalesfrom2007-2012?:language=en-US&:display_count=n&:origin=viz_share_link)


## Tools and Languages utilized
- Slack
- Excel
- Python
  - Jupyter Notebook 
   - Pandas library
   - sklearn library
   - imblearn
- ERD Generator
- PostgresSQL
- Tableau Public
- Zoom
- Google Docs
