/*
Women In The Olympics Before World War 2


Last Updated: September 2025

Easy
ID 9932

22

Find unique names women who participated in an Olympics before World War 2. Let's consider the year 1939 as the start of WW2.

Table
olympics_athletes_events

*/

select DISTINCT name 
from olympics_athletes_events
where year < 1939 AND sex = 'F';