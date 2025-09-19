/*
User Activity Analysis


Last Updated: September 2025

Medium
ID 10541

Identify users who have logged at least one activity within 30 days of their registration date.


Your output should include the user’s ID, registration date, and a count of the number of activities logged within that 30-day period.


Do not include users who did not perform any activity within this 30-day period.

Tables
user_profiles
user_activities

*/

select up.user_id , up.signup_date as registration_date , COUNT(uact.activity_type) AS n_activity
from user_profiles up 
JOIN user_activities uact 
    ON up.user_id = uact.user_id
WHERE DATEDIFF(DAY , up.signup_date ,uact.activity_date) <= 30
group by up.user_id , up.signup_date
having COUNT(uact.activity_type) >0;