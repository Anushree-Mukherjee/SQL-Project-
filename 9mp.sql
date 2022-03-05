SELECT income_group,count(income_group) as Total_income_grp 
FROM `bigquery-public-data.world_bank_health_population.health_nutrition_population` nut 
RIGHT JOIN  `bigquery-public-data.world_bank_health_population.country_summary` pop 
ON nut.country_code= pop.country_code
where not pop.income_group= "null"
group by 1
order by 2
