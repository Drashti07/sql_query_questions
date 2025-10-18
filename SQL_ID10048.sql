/*
top 5 business 
sum(reviews)
group by business
order by totalreview desc
RANK() as skip rank if there is ties 

ID 10048

*/
With total as 
(
    SELECT name , SUM(review_count) as reviews  ,
        RANK() OVER(ORDER BY SUM(review_count) DESC) as rnk
    FROM yelp_business
    GROUP BY name
) 
SELECT name , reviews
FROM total
where rnk <=5