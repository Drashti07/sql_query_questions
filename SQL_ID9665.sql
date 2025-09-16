/*
Count the number of companies in the IT sector in each country

Easy
ID 9665

Count the number of companies in the Information Technology sector in each country.
Output the result along with the corresponding country name.
Order the result based on the number of companies in the descending order.

Table
forbes_global_2010_2014
*/
SELECT country , COUNT(DISTINCT company) AS n_companies
FROM forbes_global_2010_2014
WHERE sector ='Information Technology'
GROUP BY country
ORDER BY n_companies desc;