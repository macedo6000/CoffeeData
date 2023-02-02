# HMDA Data - Machine Learning Model Analysis with Decision Trees - Segment 2

Machine learning is the use of statistical algorithms to perform tasks such as learning from data patterns and making predictions. From the three learning categories, we utilized supervised learning to understand the data patterns of ours dataset. These patterns are are formed from the applicants demographic, personal, and financial infromation. After, our decision trees determined if the loan was approved or reject. Both tools are beneficial to home mortgage approvals because it helps denote what factors are more important than others when seeking a loan. This can help future applicants to better prepare for future loans. 

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

The resulting datasets were used to train and test two Decision Tree Classification Machine Learning Models. Classification Models are assessed on the accuracy of their prediction that an application will be approved or rejected. 
### Balanced Random Forest Classifier 

The results of the Balanced Random Forest Classifier (BRFC) are as follows:
* Accuracy Score = 0.8258400146078364
* Confusion Matrix 
    |                   |Predicted 0 (Approved)|Predicted 1 (Rejected)|
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

The BRFC model also presents the importance of each column in the *input features* dataset. See below:
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

After reviewing feature importances, the least important feature, *hoepa_status* was removed before retraining the BRFC model 

The results of the BRFC (No hoepa_status) are as follows:
* Accuracy Score = 0.8260998519680105
* Confusion Matrix 
    |                   |Predicted 0 (Approved)|Predicted 1 (Rejected)|
    |------------------ |----------------------|----------------------|
    |Actual 0 (Approved)|167999|39224|
    |Actual 1 (Rejected)|26953|143080|
* Imbalanced Classification Report
    |            |precision|recall|specificty|f1|n|
    |------------|---------|------|----------|--|-|
    |0 (Approved)|0.86|0.81|0.84|0.84|207223|
    |1 (Rejected)|0.78|0.84|0.81|0.81|170033|
    |Avg/Total|0.83|0.82|0.83|0.82|377256|

### Easy Ensemble AdaBoost Classifier 

The results of the Easy Ensemble AdaBoost Classifier are as follows:
* Accuracy Score = 0.828865300368754
* Confusion Matrix 
    |                   |Predicted 0 (Approved)|Predicted 1 (Rejected)|
    |-------------------|--------------------|-------------------|
    |Actual 0 (Approved)|165205|42018|
    |Actual 1 (Rejected)|23720|146313|
* Imbalanced Classification Report
    | |precision|recall|specificty|f1|n|
    |------------|---------|------|----------|--|-|
    |0 (Approved)|0.87|0.80|0.86|0.83|207223|
    |1 (Rejected)|0.78|0.86|0.80|0.82|170033|
    |Avg/Total|0.83|0.83|0.83|0.83|377256|


After removing the hoepa_status column from the *input features* dataset and re-training the Easy Ensemble AdaBoost Classifier, the results are as follows:
* Accuracy Score = 0.8286977318525881
* Confusion Matrix 
    |                   |Predicted 0 (Approved)|Predicted 1 (Rejected)|
    |-------------------|--------------------|-------------------|
    |Actual 0 (Approved)|164670|42553|
    |Actual 1 (Rejected)|23338|146695|
* Imbalanced Classification Report
    | |precision|recall|specificty|f1|n|
    |------------|----|----|----|----|------|
    |0 (Approved)|0.88|0.79|0.86|0.83|207223|
    |1 (Rejected)|0.78|0.86|0.79|0.82|170033|
    |Avg/Total   |0.83|0.83|0.83|0.83|377256|
    
## Summary 
