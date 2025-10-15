/*

Highly Reviewed Hotels


Last Updated: July 2025

Easy
ID 9871



List all hotels along with their total number of reviews using the total_number_of_reviews column. Sort the results by total reviews in descending order.

Table
hotel_reviews


*/

select hotel_name ,  total_number_of_reviews
from hotel_reviews
group by hotel_name , total_number_of_reviews
order by total_number_of_reviews desc;