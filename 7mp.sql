select country_region,AVG(symptom_Abdominal_pain) AS symptom_Abdominal_pain
FROM `bigquery-public-data.covid19_symptom_search.symptom_search_country_daily`
GROUP BY 1
ORDER BY 2
