/*
Find the number of people on Airbnb


Last Updated: August 2025

Easy
ID 9760

Find the number of people that made a search on Airbnb.

Table
airbnb_searches
*/
select count(DISTINCT id_user) total_people_searching
from airbnb_searches;