DROP TABLE IF EXISTS text_data;
DROP TABLE IF EXISTS numeric_data;


CREATE TABLE text_data(
agency_name VARCHAR,
agency_abbr VARCHAR,
loan_type_name VARCHAR,
property_type_name VARCHAR,
loan_purpose_name VARCHAR,
owner_occupancy_name VARCHAR,
preapproval_name VARCHAR,
action_taken_name VARCHAR,
msamd_name VARCHAR,
state_name VARCHAR,
state_abbr VARCHAR,
county_name VARCHAR,
applicant_ethnicity_name VARCHAR,
co_applicant_ethnicity_name VARCHAR,
applicant_race_name_1 VARCHAR,
co_applicant_race_name_1 VARCHAR,
applicant_sex_name VARCHAR,
co_applicant_sex_name VARCHAR,
purchaser_type_name VARCHAR,
hoepa_status_name VARCHAR,
lien_status_name VARCHAR,
application_id BIGINT,
PRIMARY KEY (application_id)
);

 
 
CREATE TABLE numeric_data(
agency_code INTEGER,
loan_type INTEGER,
property_type INTEGER,
loan_purpose INTEGER,
owner_occupancy INTEGER,
loan_amount_000s INTEGER,
preapproval INTEGER,
action_taken INTEGER,
msamd INTEGER,
state_code INTEGER,
county_code INTEGER,
census_tract_number NUMERIC,
applicant_ethnicity INTEGER,
co_applicant_ethnicity INTEGER,
applicant_race_1 INTEGER,
co_applicant_race_1 INTEGER,
applicant_sex INTEGER,
co_applicant_sex INTEGER,
applicant_income_000s INTEGER,
purchaser_type INTEGER,
hoepa_status INTEGER,
lien_status INTEGER,
population INTEGER,
minority_population NUMERIC,
hud_median_family_income INTEGER,
tract_to_msamd_income NUMERIC,
number_of_owner_occupied_units INTEGER,
number_of_1_to_4_family_units INTEGER,
application_id BIGINT,
FOREIGN KEY (application_id) REFERENCES text_data (application_id),
PRIMARY KEY (application_id)
);