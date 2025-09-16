/*
Find prices for Spanish, Italian, and French wines

Easy
ID 10020


Find prices for Spanish, Italian, and French wines. Output the price.

Table
winemag_p1

*/
SELECT
   price 
FROM
    winemag_p1
WHERE
    country IN( 'Spain' , 'Italy' , 'France')