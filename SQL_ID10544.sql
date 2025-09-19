/*
High-Density Areas


Medium
ID 10544


Identify the top 3 areas with the highest customer density. Customer density = (total number of unique customers in the area / area size).


Your output should include the area name and its calculated customer density, and ties will be ranked the same.

Tables
transaction_records
stores
*/

/*
top 3 with high customer density = total unique customer / are size

*/
With densitycalc as
(
    select   area_name, ROUND(COUNT(DISTINCT customer_id) *1.0  / MAX(s.area_size ) ,2) AS customer_density
    from transaction_records tr 
    JOIN stores s on tr.store_id = s.store_id
    group by area_name
) 
, num as 
(
    SELECT area_name , customer_density , DENSE_RANK() OVER(ORDER BY customer_density DESC) AS RNK
    FROM densitycalc
)
SELECT area_name , customer_density 
FROM num
WHERE RNK<=3