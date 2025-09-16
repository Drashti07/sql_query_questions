/*
/ gender give high avg(review) when writting as guest

Gender With Generous Reviews

Easy
ID 10149


Write a query to find which gender gives a higher average review score when writing reviews as guests. Use the from_type column to identify guest reviews. Output the gender and their average review score.

Tables
airbnb_reviews
airbnb_guests

*/

select TOP 1 ROUND(AVG(CAST(rev.review_score as decimal(4,2))),2) AS avg_review, gus.gender 
from airbnb_reviews rev 
JOIN airbnb_guests gus on rev.from_user = gus.guest_id
where rev.from_type = 'guest'
group by gus.gender
order by avg_review desc ;
