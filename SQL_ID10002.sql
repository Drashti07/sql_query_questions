/*
Find the advertising channel where Uber spent more than 100k USD in 2019

Easy
ID 10002

Find the advertising channel(s) where Uber spent more than 100k USD in 2019.

Table
uber_advertising

*/

select DISTINCT advertising_channel
from uber_advertising
where year =2019 and money_spent > 100000;