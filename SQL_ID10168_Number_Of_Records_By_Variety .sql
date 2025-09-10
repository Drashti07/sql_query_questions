/*
Easy
ID 10168 : Number Of Records By Variety

Find the total number of records that belong to each variety in the dataset. Output the variety along with the corresponding number of records. Order records by the variety in ascending order.

Table
iris
*/

SELECT variety, COUNT(*) AS n_total_varieties
FROM iris
GROUP BY variety
order by variety;