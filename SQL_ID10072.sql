/*
Guest Or Host Kindness

Easy
ID 10072

Find whether hosts or guests give higher review scores based on their average review scores. Output the higher of the average review score rounded to the 2nd decimal spot (e.g., 5.11).

Table
airbnb_reviews

*/

select top 1 from_type , ROUND(AVG(review_score*1.0) ,2) as winner
from airbnb_reviews
group by from_type
order by winner desc;