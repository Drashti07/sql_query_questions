/*
SUM(review_count)
group by categories


Reviews of Categories


Last Updated: October 2025

Medium
ID 10049

252

Calculate number of reviews for every business category. Output the category along with the total number of reviews. Order by total reviews in descending order.

Table
yelp_business


*/
with ctrg as 
(
    select  value as  categories ,review_count 
    from yelp_business
    CROSS APPLY STRING_SPLIT(categories , ',')
)
SELECT value as  categories ,SUM(review_count) as review_cnt 
FROM ctrg
CROSS APPLY STRING_SPLIT(categories , ';')
group by value
order by review_cnt desc
