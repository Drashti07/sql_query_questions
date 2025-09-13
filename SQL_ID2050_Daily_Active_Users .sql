/*
filter : January 2021
grpup bu accoint id  , date
select avg(active user)
Daily Active Users


Medium
ID2050

32

Find the average daily active users for January 2021 for each account. Your output should have account_id and the average daily count for that account.

Table
sf_events


*/ 

    select account_id ,   CAST(COUNT(user_id) AS FLOAT)/31 AS N_user
    from sf_events
    where YEAR(record_date) = 2021 AND MONTH( record_date) = 1
    group by account_id 
