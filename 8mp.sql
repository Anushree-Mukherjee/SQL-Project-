SELECT T1.country_code, sum(value) as Total_debt
FROM `bigquery-public-data.world_bank_intl_debt.international_debt` AS T1
LEFT JOIN `bigquery-public-data.world_bank_intl_debt.country_summary` AS T2 ON T1.country_code=T2.country_code 
GROUP BY 1
order By 2 desc 
