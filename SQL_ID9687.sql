/*

Find details of oscar winners between 2001 and 2009

Easy
ID 9687


Find the details of oscar winners between 2001 and 2009.

Table
oscar_nominees
*/
select * from oscar_nominees
where (year between 2001 and 2009 )AND  winner = 'TRUE';