/*

Find the top ten hotels with the highest ratings


Last Updated: August 2025

Medium
ID 9874

36

Find the top ten hotels with the highest ratings. Each row in the dataset represents a review entry, and some hotels may appear multiple times. The average_score column reflects the average rating for the hotel, not the individual reviewer's score.

Output the hotel name along with the corresponding average score. Sort records based on the average score in descending order.

Table
hotel_reviews



*/

With Distincteview as
(
    select DISTINCT hotel_name , average_score
    from hotel_reviews
)
SELECT hotel_name , average_score
FROM (
        SELECT hotel_name , average_score , RANK() OVER(order by average_score desc) as rnk 
        FROM Distincteview
    ) a
WHERE rnk <=10