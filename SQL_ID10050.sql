/*

Find the review count for one-star businesses from yelp



Easy
ID 10050


Find the review count for one-star businesses from yelp.
Output the name along with the corresponding review count.

Table
yelp_business

*/

select name , review_count 
from yelp_business
where stars = 1;