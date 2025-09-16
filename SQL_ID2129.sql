/*
Post Likes


Easy
ID 2129

You are given a list of posts of a Facebook user. Find the average number of likes.

Table
fb_posts
*/
select AVG(no_of_likes*1.0) AS avg
from fb_posts;