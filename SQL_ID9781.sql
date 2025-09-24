
/*
- rate of ticket = Number of process tockets / total numbers of ticket for that type
- grou by type
- round result to 2 decimal point


Processed Ticket Rate By Type


Last Updated: September 2025

Medium
ID 9781


112

Find the processed rate of tickets for each type. The processed rate is defined as the number of processed tickets divided by the total number of tickets for that type. Round this result to two decimal places.

Table
facebook_complaints



*/



SELECT  type ,ROUND( SUM(CASE when processed = 'TRUE' then 1 else 0 end ) *1.0/  COUNT(*) ,2) AS  processed_rate
FROM facebook_complaints
GROUP BY type;