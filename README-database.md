# HMDA Loan Application Register Project - Segment 1

The Home Mortgage Disclosure Act was passed in 1975 to protect homeowners by mandating that financial institutions make home mortgage data publicly available[^1].

The Home Mortgage Database was obtained from the federal Consumer Financial Protection Bureau (CFPB), which annually collects, aggregates, and makes publicly available mortgage data as required by the HMDA. The most recent release for California, 2017, saw a dataset containing over 1.7 million records of mortgage data[^2].

The origin of this database is California HMDA Mortgage Data from 2017. The dataset was downloaded in CSV format from CFPB's website[^3], www.consumerfinance.gov. After extensive cleaning, the original dataset "raw_data.csv" contained 1,709,502 rows of string, integer, and float values, spread across 78 columns. This file was further preprocessed for exploratory data analysis (EDA). The preliminary results of that analysis can be found below: 

## Database Branch Overview

The folder of the database branch is structured as follows
  
```
├── root
│   ├── database
│   |   ├── README.md
│   │   ├── data
│   │   │   ├── demographics_database.zip
│   │   │   ├── loan_info_database.zip
│   |   ├── data_dictionaries
│   │   │   ├── README.md
│   │   │   ├── raw_data_column_typeformat.pdf
│   │   │   ├── raw_data_dictionary
│   │   │   ├── raw_data_types
│   |   ├── eda
│   │   │   ├── column_value_counts
|   │   │   │   ├── README.md
|   │   │   │   ├── action_taken
|   │   │   │   |   ├── Value_Counts_action_taken.csv
|   │   │   │   ├── action_taken_name
|   │   │   │   |   ├── Value_Counts_action_taken_name.csv
|   │   │   │ /// x 76
|   │   │   │   ├── state_code
|   │   │   │   |   ├── Value_Counts_state_code.csv
|   │   │   │   ├── state_name
|   │   │   │   |   ├── Value_Counts_state_name.csv
│   │   │   ├── columnar_data.csv
│   │   │   ├── columnar_VC_high_low.zip
│   │   │   ├── columnar_value_counts.zip
│   |   ├── data_cleaning.ipynb
│   |   ├── exploratory_data_analysis.ipynb

│   ├── index.js

```


## Results

The original CSV file contains 1,709,502 columns of string, integer, and float numeric data.



## Summary 

The data shows that

## References

[^1]: Consumer Financial Protection Bureau. (2019, March 21). About HMDA. Mortgage Data (HMDA). Retrieved January 25, 2023, from https://www.consumerfinance.gov/data-research/hmda/

[^2]: Consumer Financial Protection Bureau. (n.d.). HMDA Loan Application Register Format - Consumer Financial Protection. HMDA Loan Application Register Format. Retrieved January 26, 2023, from https://files.consumerfinance.gov/hmda-historic-data-dictionaries/lar_record_format.pdf

[^3]: Consumer Financial Protection Bureau. (2019, March 21). HMDA Loan Application Register. Washington, DC.

[^*]: Consumer Financial Protection Bureau (CFPB). (n.d.). Variable List for HMDA Loan Application Register Data. HMDA Loan Application Register Format. Retrieved January 26, 2023, from https://files.consumerfinance.gov/hmda-historic-data-dictionaries/lar_record_format.pdf 

[*^]: Consumer Financial Protection Bureau (CFPB). (n.d.). Code Explanations for Loan Application Register Data. https://files.consumerfinance.gov/hmda-historic-data-dictionaries/lar_record_codes.pdf. Retrieved January 26, 2023, from https://files.consumerfinance.gov/hmda-historic-data-dictionaries/lar_record_codes.pdf 
 
