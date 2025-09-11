/*
Medium
ID 2066 : Fastest Hometowns

Find the hometowns with the top 3 average net times. Output the hometowns and their average net time. Keep in mind that a lower net_time is better. In case there are ties in net time, return all unique hometowns.

Table
marathon_male
*/

With rnk as 
(
    select hometown , AVG(1.0*net_time) as avg_net_time 
            , DENSE_RANK() over( order by  AVG(1.0*net_time)) as DNSRNK
    from marathon_male
    group by hometown
   
)
 select hometown , avg_net_time 
 from rnk
 where DNSRNK <=3