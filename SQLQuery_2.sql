/*
User Scroll Up Events
 
Easy
ID 9787
 
Find all users that have performed at least one scroll_up event.

Table
facebook_web_log
*/
SELECT DISTINCT user_id
FROM facebook_web_log
WHERE  action = 'scroll_up'