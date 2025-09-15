/*
Find the top-ranked songs for the past 20 years.

Easy
ID 10283

Find all the songs that were top-ranked (at first position) at least once since the year 2005.

Table


*/
select DISTINCT song_name
from billboard_top_100_year_end
WHERE year >= 2005 and year_rank = 1
order by song_name;