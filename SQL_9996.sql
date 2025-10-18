/*
Find the average number of streams across all songs


Last Updated: July 2025

Easy
ID 9996


Find the average number of streams across all songs.

Table
spotify_worldwide_daily_song_ranking

*/

select AVG(CAST(streams as float)) from spotify_worldwide_daily_song_ranking;