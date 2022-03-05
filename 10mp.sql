SELECT bb.description,count(bb.description) as Num_of_cri
FROM `bigquery-public-data.chicago_crime.crime` aa
RIGHT JOIN `bigquery-public-data.austin_crime.crime` bb
ON aa.unique_key= bb.unique_key
GROUP by 1
Order by 2 desc 
