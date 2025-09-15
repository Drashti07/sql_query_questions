/*

Total AdWords Earnings

Easy
ID 10164

Find the total AdWords earnings for each business type. Output the business types along with the total earnings.

Table
google_adwords_earnings
*/
select business_type , SUM(adwords_earnings) AS earnings
from google_adwords_earnings
GROUP BY business_type;