/*
Find all Danish athletes who won a medal


Last Updated: July 2025

Easy
ID 9933

14

Find all Danish athletes who won a medal.
Output unique names only.

Table
olympics_athletes_events
*/

select  DISTINCT name 
from olympics_athletes_events
where team LIKE '%Denmark%'  AND
    medal IS NOT NULL;