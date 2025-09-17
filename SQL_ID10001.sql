/*
Find the cost per customer for advertising via public transport


Last Updated: July 2025

Easy
ID 10001

Find the cost per customer for each advertising channel and year combination . Include only channels that are advertised via public transport (advertising channel includes "bus" substring).
The cost per customer is equal to the total spent money divided by the total number of acquired customers through that advertising channel. Output advertising channel, year and its cost per customer.

Table
uber_advertising
*/

select advertising_channel ,year, money_spent/CAST(customers_acquired AS float) 
from uber_advertising
where lower(advertising_channel) like '%bus%'
group by year , advertising_channel , money_spent,customers_acquired;