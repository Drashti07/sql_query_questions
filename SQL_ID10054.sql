/*
Find the number of entries per star

Easy
ID 10054

Find the number of entries per star.
Output each number of stars along with the corresponding number of entries.
Order records by stars in ascending order.

Table
yelp_reviews

*/

select stars , count(*) as n_entries
from yelp_reviews
group by stars;