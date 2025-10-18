/*
Artist Appearance Count


Last Updated: October 2025

Easy
ID 9992


Find how many times each artist appeared on the Spotify ranking list.
Output the artist name along with the corresponding number of occurrences.
Order records by the number of occurrences in descending order.

Table
spotify_worldwide_daily_song_ranking


*/

select artist , count(*) AS n_occurrences
from spotify_worldwide_daily_song_ranking
group by artist
order by n_occurrences desc;