/*
Find songs that have more than 3 million streams

Easy
ID 9990


Find songs that have more than 3 million streams.
Output the track name, artist, and the corresponding streams.
Sort records based on streams in descending order.

Table
spotify_worldwide_daily_song_ranking
*/
SELECT trackname , artist  , streams
FROM spotify_worldwide_daily_song_ranking
WHERE streams >3000000  
ORDER BY streams DESC;