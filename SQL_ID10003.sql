/*
Lyft Driver Wages


Last Updated: August 2025

Easy
ID 10003

Find all Lyft drivers who earn either equal to or less than 30k USD or equal to or more than 70k USD.
Output all details related to retrieved records.

Table
lyft_drivers

*/

select * from lyft_drivers
WHERE yearly_salary <=30000 OR yearly_salary >=70000;