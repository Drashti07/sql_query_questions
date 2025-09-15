/*
Total Number Of Housing Units

Easy
ID 10167

Find the total number of housing units completed for each year. Output the year along with the total number of housings. Order the result by year in ascending order.


Note: Number of housing units in thousands.

Table
housing_units_completed_us

*/
SELECT year , SUM(UNIT) AS n_units
FROM (
    select year , (south + west+	midwest+northeast) AS UNIT 
    from housing_units_completed_us
) A 
GROUP BY year