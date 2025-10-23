/*

max(negative review)
top 2 hotel_name 
O/P : name, n_reviews 
not include "No negative review "
order by n_review desc


Find the top two hotels with the most negative reviews


Last Updated: October 2025

Medium
ID 9876



Find the top two hotels with the most negative reviews.
Output the hotel name along with the corresponding number of negative reviews. Negative reviews are all the reviews with text under negative review different than "No Negative"
Sort records based on the number of negative reviews in descending order.

Table
hotel_reviews
*/

select Top 2 hotel_name , COUNT(negative_review) as n_negative_review 
from hotel_reviews
where negative_review != 'No Negative'
GROUP BY hotel_name
order by n_negative_review desc;