/*
Requests Acceptance Rate


Last Updated: August 2025

Medium
ID 10133

16

Find the acceptance rate of requests which is defined as the ratio of accepted contacts vs all contacts. Multiply the ratio by 100 to get the rate.

Table
airbnb_contacts
*/

select  COUNT(ts_accepted_at)*100.0 /COUNT(*) AS Ration
from airbnb_contacts;