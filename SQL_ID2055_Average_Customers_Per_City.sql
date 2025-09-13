/*

Medium
ID 2055 : Average Customers Per City


Write a query that will return all cities with more customers than the average number of  customers of all cities that have at least one customer. For each such city, return the country name,  the city name, and the number of customers

Tables
linkedin_customers
linkedin_city
linkedin_country


*/

with city_total as 
(
    select DISTINCT lc.country_name , cty.city_name , count(*)  as n_total 
    from linkedin_customers C 
     JOIN linkedin_city cty on C.city_id = cty.id
     JOIN linkedin_country lc on lc.id = cty.country_id
     group by lc.country_name , cty.city_name
)
, n_avg as
(
    Select AVG(n_total) as avg_total
    from city_total
)
select c.country_name , c.city_name ,  c.n_total 
from n_avg  n , city_total c 
where c.n_total > n.avg_total