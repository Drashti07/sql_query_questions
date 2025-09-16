/*
Find the average number of stars for each state

Easy
ID 10052

Find the average number of stars for each state.
Output the state name along with the corresponding average number of stars.

Table
yelp_business

*/

select state , AVG(stars) as average_stars
from yelp_business
GROUP BY state;