/*
Top Sunny Locations By Hours


Last Updated: September 2025

Medium
ID 10551


Find the top three locations with the highest total number of sunny hours. Sunny hours are calculated as:


Sunny Hours = Maximum Daylight Hours - (Cloud Cover Percentage ÷ 10).


If the result is negative, treat it as zero. Round all calculations to 2 decimal places.


Return the location name and the total number of sunny hours. If multiple locations are tied in total sunny hours, include all tied locations, even if this results in more than three being returned. Do not skip ranks. If there are ties, all tied locations should be included at their shared rank.

Table
weather_data

*/

with max_sunny as 
(
    select location_name  , case when max_daylight_hours - (cloud_cover_percentage /10) < 0 then 0 else max_daylight_hours - (cloud_cover_percentage /10)  end as Sunny_Hours
    from weather_data
) 
SELECT location_name , Sunny_Hours 
FROM 
(
    SELECT location_name , ROUND(SUM(Sunny_Hours),2) Sunny_Hours , DENSE_RANK() OVER(ORDER BY ROUND(SUM(Sunny_Hours),2) desc) as rnk 
    FROM max_sunny
    group by location_name
) A 
where rnk <= 3
