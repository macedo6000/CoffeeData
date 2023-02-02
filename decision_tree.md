# HMDA Data - Machine Learning Model Analysis with Decision Trees

[intro about ML, decision trees and what makes them good for home mortgage approvals.

note. something in module 18 about decision trees not being liable to problems with linearity of dataset]

## Overview

As part of an extensive ETL process, important columns from the original dataset were extracted into a Machine Learning Dataset. Accordingly, the resulting dataset was composed entirely of columns containing categorical data with numerical datatypes. The numeric dataset was further split into *input features* and a *target variable*, listed below: 

*Input Features*

    * population
    * minority_population
    * hud_median_family_income
    * tract_to_msamd_income
    * number_of_owner_occupied_units
    * number_of_1_to_4_family_units
    * applicant_sex
    * co_applicant_sex
    * applicant_ethnicity
    * co_applicant_ethnicity
    * applicant_race_1
    * co_applicant_race_1
    * loan_amount_000s
    * applicant_income_000s
    * loan_type
    * loan_purpose
    * purchaser_type
    * property_type
    * owner_occupancy
    * hoepa_status
    * county_code

*Target Variable*

    * action_taken

The *input features* represent demographic, personal, and financial information for each mortgage application. The *target variable* comprises a binary that represents the approval or rejection of each application.

The datasets were then prepared for the machine learning models using two SciKitLearn preprocessing packages: *StandardScaler* and *TrainTestSplit*. The *StandardScaler*  

After standardizing the *input features* using a Standard Scaler from the SciKitLearn package, the *input features* and *target variable* were split into training and testing datasets, stratified by the *target_variable.*



## Results

The resulting datasets were used to train and test two Decision Tree Classification Machine Learning Models. Classification Models are assessed on the accuracy of their prediction that an application will be approved or jected. 
### Balanced Random Forest Classifier 

The results of the Balanced Random Forest Classifier are as follows:
* Accuracy Score = 0.8262504983255754
* Confusion Matrix 
    |                   |Predicted 0 (Approved)|Predicted 1 (Reject)|
    |------------------ |----------------------|--------------------|
    |Actual 0 (Approved)|167845|39378|
    |Actual 1 (Rejected)|26915|143118|
* Imbalanced Classification Report
    |            |precision|recall|specificty|f1|n|
    |------------|---------|------|----------|--|-|
    |0 (Approved)|0.86|0.81|0.84|0.84|207223|
    |1 (Rejected)|0.78|0.84|0.81|0.81|170033|
    |Avg/Total|0.83|0.82|0.83|0.82|377256|

#### Feature Importances 

The Balanced Random Forest Classifier model also presents the importance of each column in the *input features* dataset. See below:
|Importance|               *Input Feature*|
|----------|------------------------------|
|0.402604|                  purchaser_type|
|0.101298|                loan_amount_000s|
|0.096652|           applicant_income_000s|
|0.049835|           tract_to_msamd_income|
|0.048583|             minority_population|
|0.046277|                      population|
|0.045918|  number_of_owner_occupied_units|
|0.045856|   number_of_1_to_4_family_units|
|0.023037|                applicant_race_1|
|0.020550|                   applicant_sex|
|0.020450|             applicant_ethnicity|
|0.020395|        hud_median_family_income|
|0.019691|                     county_code|
|0.016681|                    loan_purpose|
|0.009225|             co_applicant_race_1|
|0.009155|                       loan_type|
|0.008175|                co_applicant_sex|
|0.007267|          co_applicant_ethnicity|
|0.005771|                 owner_occupancy|
|0.002376|                   property_type|
|0.000204|                    hoepa_status|

After reviewing feature importances, the six least important *input features* were removed and the Balanced Random Forest model was re-trained. The five features included: 

    * co_applicant_sex
    * co_applicant_ethnicity
    * owner_occupancy
    * property_type
    * hoepa_status

The results of the Balanced Random Forest Classifier are as follows:
* Accuracy Score = 0.8247688462510924
* Confusion Matrix 
    |                   |Predicted 0 (Approved)|Predicted 1 (Reject)|
    |------------------ |----------------------|----------------------|
    |Actual 0 (Approved)|167228|39995|
    |Actual 1 (Rejected)|26773|143260|
* Imbalanced Classification Report
    |            |precision|recall|specificty|f1|n|
    |------------|---------|------|----------|--|-|
    |0 (Approved)|0.86|0.81|0.84|0.84|207223|
    |1 (Rejected)|0.78|0.84|0.81|0.81|170033|
    |Avg/Total|0.83|0.82|0.83|0.83|377256|

### Easy Ensemble AdaBoost Classifier 

The results of the Easy Ensemble AdaBoost Classifier are as follows:
* Accuracy Score = 0.8287392760686865
* Confusion Matrix 
    |                   |Predicted 0 (Approved)|Predicted 1 (Reject)|
    |-------------------|--------------------|-------------------|
    |Actual 0 (Approved)|164647|42576|
    |Actual 1 (Rejected)|23305|146728|
* Imbalanced Classification Report
    | |precision|recall|specificty|f1|n|
    |------------|---------|------|----------|--|-|
    |0 (Approved)|0.88|0.79|0.86|0.83|207223|
    |1 (Rejected)|0.78|0.86|0.79|0.82|170033|
    |Avg/Total|0.83|0.83|0.83|0.83|377256|

## Summary 
