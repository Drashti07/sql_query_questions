/*
Find the number of Yelp businesses that sell pizza

Easy
ID 10153


Find the number of Yelp businesses that sell pizza.

Table
yelp_business

*/
SELECT 
    count(*) 
FROM yelp_business 
WHERE lower(categories) LIKE '%pizza%'