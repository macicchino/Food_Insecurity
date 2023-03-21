
# Final Project: Food Insecurity <dl><sub>by SQL Team 6</sub></dl>
<img width="1165" height="250" alt="Produce" src="https://user-images.githubusercontent.com/112206035/223837617-92232bb1-3bd4-4c3b-bee0-421ffb1c9f1a.png">

## Overview 
The purpose of this project is to utilize machine learning to predict and visualize food insecurity in the United States of America. It will also take an in depth look at physical access to food in the US and its effects on food insecurity.

### Background
SQL Team Six started the Project initially sharing a consensus to explore datasets  related to Agriculture in general, and Urban Agriculture in New York City. The team members were assigned various roles to seek out potential datasets and sources of data related to the proposed topic. Following the initial meeting, where the various datasets were examined, it was decided that the dataset from the United States Department of Agriculture (USDA) was large enough and had an adequate number of variables which could be manipulated. While team members were contemplating on the ideal dataset to work with, suggestions were welcomed from members pertaining to the Research Question(s)/Hypothesis.

Teammates came up with a number of proposed research questions by the second meeting and the USDA dataset was split among members to clean and filter into tables. It was decided that the Topic of the Project was going to be about Food Insecurity in the USA. Tasks were assigned to each team member and the datasets were expected to be committed to the SQL Team Six repository on individual branches. 

The highlight of the third meeting was having the datasets from the USDA collated and deciding on which variables were measurable enough to be used in a machine learning model. The Local, Restaurants, Stores and Insecurity Datasets were chosen and the irrelevant datasets were removed from the team GitHub repository by every team member. Teammates then assigned themselves tasks to clean up the README.

The team concluded the Project Week 1 submission deliverables during the fourth meeting by finishing up with the Schema for the database. The README was updated with screenshots of the tables and the Entity Relationship Diagram (ERD) in time for submission. This meeting involved deliberations on the possible model to use for the machine learning portion of the project. A team member took up the task of searching for data to complement existing data in order to have the dates synchronized across the datasets. A couple of the team members took responsibility for the cleaning up and transformation of the data and testing the proposed machine learning model.

Following the submission of the first deliverable, Team 6 moved on to planning for submission of the next deliverable. Numerous deliberations took place, with teammates deciding to obtain some time-specific dataset in order to run the unsupervised machine learning model proposed. Other members were assigned to work on dashboard visualizations, after the final cleaned data was uploaded. A draft PowerPoint presentation was started as a guide to the final presentation expected by Group 6, upon completion of the final project.

An extra meeting was required prior to the sixth meeting/submission day meeting during which the first machine learning model was reviewed and an extra food insecurity dataset from 2017 to 2019 was retrieved to compare the model which would run on data from 2011 to 2016. Visualizations were also reviewed and suggestions were made. 

Team 6 met again on submission day of the second deliverable to review the machine learning models proposed, the visualizations and PowerPoint presentations. Team members split tasks in order to get the GitHub cleaned up and files and folders organized for submission.

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

### Food Insecurity by State(%)
Between 2008 and 2010, the top 5 States with the lowest levels recorded for Food Insecurity were North Dakota, Virginia, New Hampshire, Delaware, and Minnesota. Food insecurity however increased between 2011 and 2013 for the first 22 States, recorded with the lowest levels of food insecurity.  
Mississippi recorded the highest level of food insecurity, followed by Texas, Alabama, Arkansas, and Georgia between 2008 and 2010 as the five most food insecure states in the USA. Food insecurity improved for three of these five States, with Texas and Mississippi still experiencing increasing food insecurity from 2011 to 2013. 
From 2014 to 2016, while the five states which recorded the lowest levels of food insecurity had decreasing levels of food insecurity except Delaware and Virginia, the five States with the highest levels of food insecurity showed lower levels of food insecurity except Alabama.

![2008-2016 Food Insecurity by State(%)](https://user-images.githubusercontent.com/114967995/225492005-3dcd8270-f543-409e-b9b5-e00dcb3e0e20.png)


[Tableau Link](https://public.tableau.com/views/Food_Insecurity_Data_Visualizations1/2008-2016FoodInsecuritybyState?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link)


### Change in Food Insecurity by State(%)
Maine and Nevada recorded the lowest negative change in food insecurity, hence these two States had decreasing food insecurity from 2011 to 2014 while Missouri and Nevada recorded the largest change, implying that food insecurity increased the most in these states from 2011 to 2014.

![2011-2014 Change In Food Insecurity by State(%)](https://user-images.githubusercontent.com/114967995/225492587-4f0f5445-8aa3-4b56-a73c-b1de1085c8b7.png)

                     
[Tableau Link](https://public.tableau.com/views/ChangeinFood_Insecurity_Data_Visualizations2011-2014/2011-2014ChangeInFoodInsecuritybyState?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link)


![2014-2017 Change In Food Insecurity(%)](https://user-images.githubusercontent.com/114967995/225492944-898e5e52-2b3e-48a0-909b-d59b04194072.png)


[Tableau Link](https://public.tableau.com/shared/CN2GM897Z?:display_count=n&:origin=viz_share_link)

### Change in Stores by State(%)

The scatter plot below shows the distribution of change by percentage(%) in Grocery, Convenience, Specialized and Supercentres/Clubstores across all 50 states in the USA from 2011 to 2016.
Convenience stores overall, recorded increasingly higher changes in a significant number of states while grocery stores across the USA rather recorded negatively diminishing number of stores from 2011-2016 as shown below. 

![2011-2016 Change in Stores(%)](https://user-images.githubusercontent.com/114967995/225656909-949e3b65-5a83-4194-8d1d-12b86bfcec32.png)


[Tableau Link](https://public.tableau.com/views/ChangeinStores2011-2016byState/2011-2016ChangeinStores?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link)


### Change in Local Agritourism Operations by State(%)
The image below shows Change in Agritourism Operations versus Change in CSA Farms, Direct Farm Sales per Capita and Farms with Direct sales as shown below.

![Change in Local Agritourism Operation vrs and Farms and Farm Sales](https://user-images.githubusercontent.com/114967995/225686585-608856ad-e52f-4a34-8e96-65548436e191.png)


[Tableau Link](https://public.tableau.com/views/ChangeinLocalAgritourismOperationsVrsFarmsandFarmSalesfor2007-2012byState/ChangeinLocalAgritourismOperationvrsandFarmsandFarmSalesfrom2007-2012?:language=en-US&:display_count=n&:origin=viz_share_link)

## Dashboard

[Food Insecurity and Stores](https://public.tableau.com/app/profile/emery.scott/viz/FoodInsecurityDashboard/FoodinsecurityandFoodStores)
[Food Insecurity and Restaurants] (https://public.tableau.com/app/profile/emery.scott/viz/FoodInsecurityDashboard/FoodInsecurityandResturants#1)
[Food Insecurity Over Time] (https://public.tableau.com/app/profile/emery.scott/viz/FoodInsecurityDashboard/FoodInsecurityOverTime#2)

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
