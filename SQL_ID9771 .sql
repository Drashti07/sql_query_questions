/*
Find all actions which occurred more than once in the weblog


Last Updated: September 2025

Easy
ID 9771

27

Find all actions which occurred more than once in the weblog.

Table
facebook_web_log

*/

select action 
from facebook_web_log
GROUP BY action
having COUNT(*) >1;