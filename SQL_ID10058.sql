/*
Find the number of reviews received by Lo-Lo's Chicken & Waffles for each star

Easy
ID 10058

Find the number of reviews received by Lo-Lo's Chicken & Waffles for each star.
Output the number of stars along with the corresponding number of reviews.
Sort records by stars in ascending order.

Table
yelp_reviews

*/
select stars , COUNT(*)  AS n_reviews
from yelp_reviews
where business_name ='Lo-Lo''s Chicken & Waffles'
group by stars;