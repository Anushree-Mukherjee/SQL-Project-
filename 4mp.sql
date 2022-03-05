 SELECT country_region, sub_region_1,symptom_Alcoholism FROM `bigquery-public-data.covid19_symptom_search.symptom_search_country_weekly` 
WHERE symptom_Alcoholism > (SELECT AVG(symptom_Alcoholism) FROM `bigquery-public-data.covid19_symptom_search.symptom_search_country_weekly` );
