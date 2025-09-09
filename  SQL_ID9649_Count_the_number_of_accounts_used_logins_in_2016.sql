/*

Count the number of accounts used for logins in 2016


Easy
ID 9649 : Count the number of accounts used for logins in 2016




How many accounts have performed a login in the year 2016?

Table
product_logins

account_id: bigint
employer_key: varchar
login_date: date
*/

select count(account_id) 
from product_logins
where YEAR(login_date) = 2016;