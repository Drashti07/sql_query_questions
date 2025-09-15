/*
Rank guests based on their ages

Easy
ID 10160

Rank guests based on their ages.
Output the guest id along with the corresponding rank.
Order records by the age in descending order.

Table
airbnb_guests

*/
select guest_id , RANK() OVER(ORDER BY age DESC) AS rank
from airbnb_guests;