/*

Countries With Most Negative Reviews


Last Updated: July 2025

Medium
ID 9878


Find the countries whose citizens made the highest number of negative reviews. Output the country along with the number of negative reviews and sort records based on the number of negative reviews in descending order. Review is not negative if value negative value column equals to "No Negative". You can ignore countries with no negative reviews.

Table
hotel_reviews

*/


select reviewer_nationality , COUNT(total_number_of_reviews ) as n_reviews
from hotel_reviews
where lower(negative_review) != 'no negative'
group by reviewer_nationality
order by n_reviews desc;