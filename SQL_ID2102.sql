/*

Flags per Video


Last Updated: September 2025

Medium
ID 2102


115

For each video, find how many unique users flagged it. A unique user can be identified using the combination of their first name and last name. Do not consider rows in which there is no flag ID.

Table
user_flags

*/

select video_id , COUNT(DISTINCT CONCAT(COALESCE(user_firstname ,'' ), COALESCE(user_lastname,'' )) AS num_unique_users
from user_flags
where flag_id is not null
group by video_id;