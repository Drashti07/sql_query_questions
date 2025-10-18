/*

Find songs that are ranked between 8-10


Last Updated: July 2025

Easy
ID 9999


Find songs that are ranked between 8-10.
Output the track name along with the corresponding position, ordered ascendingly.

Table
spotify_worldwide_daily_song_ranking

*/

select trackname , position
 from spotify_worldwide_daily_song_ranking
 where position between 8 AND 10
 order by position;