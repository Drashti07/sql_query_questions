/*
Find all Lyft rides which happened on rainy days before noon


Last Updated: July 2025

Easy
ID 10004

Find all Lyft rides which happened on rainy days before noon.

Table
lyft_rides

*/

select * from lyft_rides
WHERE weather = 'rainy' AND hour < 12;