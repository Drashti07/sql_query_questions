/*

Flights With No Delay


Easy
ID 9675 : Flights With No Delay



18

Find all US flight details which had no delay (use only arr_delay column for filtering).

Table
us_flights

*/

select * from us_flights
where arr_delay <=0;