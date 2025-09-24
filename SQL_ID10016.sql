/*
Churn Rate Of Lyft Drivers


Last Updated: August 2025

Medium
ID 10016

30

Calculate the overall churn rate for Lyft drivers across all years in the dataset. Churn is defined as the percentage of drivers who have stopped driving for Lyft, as indicated by a recorded end_date in the lyft_drivers table. In your answer, express the churn rate as a ratio, instead of a percentage. For example, 0.1 instead of 10%.

Table
*/

SELECT     ROUND( COUNT(end_date)*1.0 / COUNT(*) ,2) as driver_stops
FROM lyft_drivers
;