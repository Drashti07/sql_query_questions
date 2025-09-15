/*
Reviews of Hotel Arena


Easy
ID 10166


Find how many reviews exist for each review score given to 'Hotel Arena'. Output the hotel name ('Hotel Arena'), each review score, and the number of reviews for that score. Ensure the results only include 'Hotel Arena.'

Table
hotel_reviews


*/

SELECT hotel_name,
       reviewer_score,
       COUNT(*) AS count
FROM hotel_reviews
WHERE hotel_name = 'Hotel Arena'
GROUP BY hotel_name, reviewer_score;