/*
Find the overall friend acceptance count for a given date


Last Updated: July 2025

Easy
ID 9780

19

Find the overall friend acceptance count for a given date.
Assume the date is 2nd of January 2019.

Table
facebook_friendship_requests

*/

select COUNT(*) as n_accepted_requests
from facebook_friendship_requests
where date_approved = '2019-01-02';