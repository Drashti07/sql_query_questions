/*

top 5 business 
Most Checkins


Last Updated: October 2025

Medium
ID 10053


Find the top 5 businesses with the most check-ins.
Output the business id along with the number of check-ins.

Table
yelp_checkin

*/



select TOP 5 business_id , SUM(checkins) as checkins from yelp_checkin
group by business_id
order by checkins desc;