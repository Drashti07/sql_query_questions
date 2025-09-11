/*



Medium
ID 2064 : Difference Between Times



In a marathon, gun time is counted from the moment of the formal start of the race while net time is counted from the moment a runner crosses a starting line. Both variables are in seconds.


You are asked to check if the interval between the two times is different for male and female runners. First, calculate the average absolute difference between the gun time and net time. Group the results by available genders (male and female). Output the absolute difference between those two values.

Tables
marathon_male
marathon_female
*/

with cte as 
(
    select AVG(CAST(ABS(gun_time-net_time) AS DECIMAL(10,2))) AS male_diff 
    from marathon_male
),
cte2 as 
(
    select AVG(gun_time*1.0)  - AVG(net_time*1.0) female_net from marathon_female
)
select ROUND(abs(female_net-male_diff),2) from cte , cte2