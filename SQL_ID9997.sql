/*

Top 100 Ranked Songs


Last Updated: July 2025

Easy
ID 9997


Find the total number of streams for the top 100 ranked songs.

Table
spotify_worldwide_daily_song_ranking
*/
select sum(streams)
from spotify_worldwide_daily_song_ranking
where position <=100;