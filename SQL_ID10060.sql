/*

Top Cool Votes


Last Updated: September 2025

Medium
ID 10060

148

Find the review_text that received the highest number of  cool votes.
Output the business name along with the review text with the highest number of cool votes.

Table
yelp_reviews

*/

SELECT business_name , review_text
FROM 
(
    select business_name , review_text , RANK() OVER( ORDER BY SUM(cool) desc) as totalreview  
    from yelp_reviews
    where cool >=1
    group by business_name , review_text
)a
where totalreview =1
