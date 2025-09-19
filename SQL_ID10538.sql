/*

TOP 3 POST WITH HIGHEST LIKES COUT FOR EACH CHANNER
group by channel
count(like ) 
allow gap RANK()
filter post with 0 like 



Top Posts Per Channel


Last Updated: September 2025

Medium
ID 10538


Identify the top 3 posts with the highest like counts for each channel. Assign a rank to each post based on its like count, allowing for gaps in ranking when posts have the same number of likes. For example, if two posts tie for 1st place, the next post should be ranked 3rd, not 2nd. Exclude any posts with zero likes.


The output should display the channel name, post ID, post creation date, and the like count for each post. Because there could be ties in rankings, your output could have more than 3 rows for each channel.

Tables
posts
channels


*/
With chanellikes as 
(
    select c.channel_id , c.channel_name, p.post_id ,p.created_at , SUM(likes) as likes
    from posts p
    JOIN channels c on p.channel_id = c.channel_id
    group by c.channel_id , p.post_id , c.channel_name , p.created_at
    having SUM(likes) > 0
)
, chanalrank as 
(
    SELECT channel_name, post_id , created_at  ,likes, RANK() OVER(PARTITION BY channel_name ORDER BY likes desc) as rnk
    FROM chanellikes
)
select channel_name, post_id , created_at  ,likes
from chanalrank
where rnk <=3