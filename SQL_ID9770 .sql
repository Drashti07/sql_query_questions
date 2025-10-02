/*
Find the number of views each post has


Last Updated: July 2025

Easy
ID 9770

20

Find the number of views each post has.
Output the post id along with the number of views.
Order records by post id in ascending order.

Table
facebook_post_views

*/

select post_id , COUNT(viewer_id) as n_views
from facebook_post_views
group by post_id;