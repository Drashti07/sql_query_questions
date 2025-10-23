/*
top 5 state with max(5 star business)
op 5 States With 5 Star Businesses


Last Updated: September 2025

Hard
ID 10046

152

Find the top 5 states with the most 5 star businesses. Output the state name along with the number of 5-star businesses and order records by the number of 5-star businesses in descending order. In case there are ties in the number of businesses, return all the unique states. If two states have the same result, sort them in alphabetical order.

Table
yelp_business

*/
SELECT state , n_numbers
FROM (
    select  state , COUNT(*) as n_numbers , DENSE_RANK() OVER( ORDER BY COUNT(*) DESC) as dnsrnk
    from yelp_business
    WHERE stars = 5
    GROUP BY state
 ) a
 WHERE dnsrnk <=5
