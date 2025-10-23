/*

Find the countries with the most positive reviews


Last Updated: July 2025

Medium
ID 9879


Find the countries whose reviewers give positive reviews. Positive reviews are all reviews where review text is different than "No Positive".


Output all countries along with the number of positive reviews and sort records based on the number of positive reviews in descending order. Leave out the countries with no positive reviews.

Table
hotel_reviews

*/


select reviewer_nationality , COUNT(positive_review) as n_positive_reviews
from hotel_reviews
where positive_review not Like 'No Positive'
GROUP BY reviewer_nationality
order by n_positive_reviews desc;