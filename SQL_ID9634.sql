
/*

AVG host response rate with cleaning fees for each zipcode


group by zipcode 
covert host_response_rate to numeric and missing value to null


Host Response Rates With Cleaning Fees


Last Updated: October 2025

Medium
ID 9634

24

Find the average host response rate with a cleaning fee for each zipcode. Present the results as a percentage along with the zip code value.
Convert the column 'host_response_rate' from TEXT to NUMERIC using type casts and string processing (take missing values as NULL).
Order the result in ascending order based on the average host response rater after cleaning.

Table
airbnb_search_details

ID 9634
*/

SELECT  zipcode , AVG(CAST(REPLACE(host_response_rate, '%', '') AS float)) AS avg_host_response_rate 
FROM airbnb_search_details
where cleaning_fee = 1
GROUP BY zipcode
having AVG(CAST(REPLACE(host_response_rate, '%', '') AS float)) >=0
order by avg_host_response_rate