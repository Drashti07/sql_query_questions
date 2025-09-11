/*


Medium
ID 2065 :Time from 10th Runner

In a marathon, gun time is counted from the moment of the formal start of the race while net time is counted from the moment a runner crosses a starting line. Both variables are in seconds.

How much net time separates Chris Doe from the 10th best net time (in ascending order)? Avoid gaps in the ranking calculation. Output absolute net time difference.

Table
marathon_male
*/

With Chris as 
(
    select net_time ,gun_time  
    from marathon_male
    where lower(person_name) = 'chris doe'
),
bestn_Time as 
(
    SELECT net_time ,gun_time , DENSE_RANK() over(Order by net_time) as rnk
    from marathon_male
)
select  DISTINCT Chris.net_time - bestn_Time.net_time  difference
from bestn_Time , Chris
where bestn_Time.rnk =10
