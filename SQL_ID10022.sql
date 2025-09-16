/*
Find all wine varieties which can be considered cheap based on the price



Easy
ID 10022

Find all wine varieties which can be considered cheap based on the price.
A variety is considered cheap if the price of a bottle lies between 5 to 20 USD.
Output unique variety names only.

Table
winemag_p1
*/
select DISTINCT variety
from winemag_p1
where price BETWEEN 5 AND 20;