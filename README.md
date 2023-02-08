# Evaluating Home Mortgage Eligbility Criteria using Random Forest Classification Models 

The Home Mortgage Disclosure Act was passed in 1975 to protect homeowners by mandating that financial institutions make home mortgage data publicly available[^1]. The HMDA Loan Application Register was obtained from the federal Consumer Financial Protection Bureau (CFPB), which annually collects, aggregates, and makes publicly available mortgage data as required by the HMDA.

## Overview

In this project, Team 5 will be analyzing the eligibility criteria for home mortgages. The reason why we chose to analyze the loan approval process is to identify what are potential factors on these applications. By the year, the reality of wanting to have our dream homes for our families becomes a much more serious topic. Understanding loans and acknowledging what components increases our chances of securing credit at the most favorable terms can save you thousands. 

### The selected topic and the reasoning for that selection

As a team, we will examine multiple indicators such as demographic, personal, and financial information for each mortgage application. For the demographic, we want to identify if there is bias on applicants that come from a more diverse background involving gender, race, and ethnicity. Personal features consists of their location, HOEPA status, or the number of owners in an occupied unit. Lastly, the applicants financial information, which should be the most important, uses data such as their income and loan information. By studying this dataset, the team hopes to further understand loan applications and help others identify what factors can potentially predict the likelyhood of getting an offer. As well, to eliminate lending discrimination in this case if the issues rises. 

### The questions that the team plans to answer with the project

* Can Machine Learning Models provide better accuracy in prediciting Loan Origination than the current Preapproval process?
* Is there a gender/race/ethnicity bias present in the data?
* Does the applicants county/address have an affect on loan origination? 
* Which financial/applicant/demographic features have the greatest impact on Loan Origination?

### A description of the Repository 

This repository is structured as follows:

├── main
│   ├── README.md
│   ├── ETL.ipynb
│   ├── ml_analysis.ipynb
│   ├── data/
│   │   ├── README.md
│   ├── sql/
│   │   ├── schema.sql
│   │   ├── query.sql
|   ├── data_dictionaries/
│   │   ├── README.md
│   │   ├── raw_data_column_typeformat.pdf
│   │   ├── raw_data_dictionary
│   │   ├── raw_data_types
│   ├── EDA/
│   |   ├── name_number_table.csv
│   |   ├── exploratory_data_analysis.ipynb
│   │   ├── columnar_data.csv
│   │   ├── data_cleaning.ipynb
│   │   ├── name_num_split.ipynb
│   │   ├── splitting_data.ipynb
│   ├── ML/
│   |   ├── brfc_0.txt
│   |   ├── brfc_1.txt



## Exploratory Data Analysis

 The most recent release of HMDA Data for California saw a dataset containing over 1.7 million records of home mortgage applicants in 2017. The data portrays an applicant's financial, personal, and demographic information through various categorical and numeric variables.

### A description of the data

The original CSV file contained 1,714,459 rows of string, integer and float data spread over 78 columns. Columns can be categorized as: 

```python


#demographic float columns, 
demographics_columns = ['population', 
    'minority_population', 
    'hud_median_family_income', 
    'tract_to_msamd_income', 
    'number_of_owner_occupied_units', 
    'number_of_1_to_4_family_units']

# categorical text/numeric
applicant_sex_columns = ['applicant_sex', 
    'applicant_sex_name', 
    'co_applicant_sex', 
    'co_applicant_sex_name']

race_ethnicity_columns = ['applicant_ethnicity_name', 
    'applicant_ethnicity', 
    'co_applicant_ethnicity_name', 
    'co_applicant_ethnicity', 
    'applicant_race_1', 
    'applicant_race_2', 
    'applicant_race_3', 
    'applicant_race_4', 
    'applicant_race_5', 
    'co_applicant_race_1', 
    'co_applicant_race_2', 
    'co_applicant_race_3', 
    'co_applicant_race_4', 
    'co_applicant_race_5', 
    'applicant_race_name_1', 
    'applicant_race_name_2', 
    'applicant_race_name_3', 
    'applicant_race_name_4', 
    'applicant_race_name_5', 
    'co_applicant_race_name_1', 
    'co_applicant_race_name_2', 
    'co_applicant_race_name_3', 
    'co_applicant_race_name_4', 
    'co_applicant_race_name_5']

# loan info float
monetary_columns = ['loan_amount_000s', 
    'applicant_income_000s',
    'rate_spread']

# loan info categorical
loan_info_columns = ['loan_type_name', 
    'loan_type', 
    'property_type_name', 
    'property_type', 
    'loan_purpose_name', 
    'loan_purpose', 
    'owner_occupancy_name', 
    'owner_occupancy']

# preapproval/approval columns
preapproval_columns = ['preapproval_name', 
    'preapproval']
approval_columns = ['action_taken_name', 
    'action_taken']

# denial
denial_reason_columns = ['denial_reason_1', 
    'denial_reason_2', 
    'denial_reason_3', 
    'denial_reason_name_1',
    'denial_reason_name_2',
    'denial_reason_name_3']

loan_result_columns = ['purchaser_type_name', 
    'purchaser_type',
    'hoepa_status_name', 
    'hoepa_status', 
    'lien_status_name',
    'lien_status']

# constant, float
tracking_columns = ['edit_status_name', 
    'edit_status', 
    'sequence_number',
    'respondent_id']

# date/time/location columns
date_time_loc_columns = ['as_of_year',  
    'agency_name', 
    'agency_abbr', 
    'agency_code',
    'msamd_name', 
    'msamd', 
    'state_name', 
    'state_abbr', 
    'state_code', 
    'county_name', 
    'county_code', 
    'census_tract_number', 
    'application_date_indicator']


```

Columns containing categorical information like 'loan_purpose' have a corresponding "name" column (i.e., 'loan_purpose_name'), which correlates a numerical label to each cateogorical variable. The following columns follow this scheme:



## Extract Transform Load 


### Data Cleaning

## Machine Learning

## Results

### EDA Results 


## Summary



## Presentation
https://docs.google.com/presentation/d/1f93N2tBkFzOsnvKHm8yDEEB_12Z-LlqSyPY9UlhBH0Q/edit?usp=sharing



## References

[^1]: Consumer Financial Protection Bureau. (2019, March 21). About HMDA. Mortgage Data (HMDA). Retrieved January 25, 2023, from https://www.consumerfinance.gov/data-research/hmda/

[^2]: Consumer Financial Protection Bureau. (n.d.). HMDA Loan Application Register Format - Consumer Financial Protection. HMDA Loan Application Register Format. Retrieved January 26, 2023, from https://files.consumerfinance.gov/hmda-historic-data-dictionaries/lar_record_format.pdf

[^3]: Consumer Financial Protection Bureau. (2019, March 21). HMDA Loan Application Register. Washington, DC.

[^*]: Consumer Financial Protection Bureau (CFPB). (n.d.). Variable List for HMDA Loan Application Register Data. HMDA Loan Application Register Format. Retrieved January 26, 2023, from https://files.consumerfinance.gov/hmda-historic-data-dictionaries/lar_record_format.pdf 

[^*]: Consumer Financial Protection Bureau (CFPB). (n.d.). Code Explanations for Loan Application Register Data. https://files.consumerfinance.gov/hmda-historic-data-dictionaries/lar_record_codes.pdf. Retrieved January 26, 2023, from https://files.consumerfinance.gov/hmda-historic-data-dictionaries/lar_record_codes.pdf 
 