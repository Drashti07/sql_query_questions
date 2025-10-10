/*
Meta/Facebook Accounts


Last Updated: October 2025

Medium
ID 10296


Of all accounts with status records on January 10th, 2020, calculate the ratio of those with 'closed' status.

Table
fb_account_status
*/
select CAST(SUM(case when status = 'closed' then 1 end) as float)/
    count(*) as closed_ratio 
from fb_account_status
where status_date = '2020-01-10';