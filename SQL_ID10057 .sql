/*

Find the number of 5-star reviews earned by Lo-Lo's Chicken & Waffles

Easy
ID 10057

Find the number of 5-star reviews earned by Lo-Lo's Chicken & Waffles.

Table
yelp_reviews
*/

select count(stars) As n_5star_reviews
from yelp_reviews
where business_name ='Lo-Lo''s Chicken & Waffles' and stars = 5;