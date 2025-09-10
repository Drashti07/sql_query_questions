/*
Medium
ID 2048 : Percentage Of Revenue Loss

For each service, calculate the percentage of incomplete orders along with the percentage of revenue loss from incomplete orders relative to total revenue.


Your output should include:


•  The name of the service
•  The percentage of incomplete orders
•  The percentage of revenue loss from incomplete orders

Table
uber_orders


*/
With incompleteorder as 
(
    select service_name , SUM(number_of_orders) As incompleOrder , sum(monetary_value	) as valuesum
    from uber_orders
    where status_of_order != 'Completed'
    Group by service_name 
) ,
allorder as 
(
    select service_name , SUM(number_of_orders) As compleOrder , sum(monetary_value	) as valuesum
    from uber_orders 
    where status_of_order = 'Completed'
    Group by service_name 
)
SELECT nc.service_name , round((nc.incompleOrder*1.0 / (nc.incompleOrder + co.compleOrder) )*100 , 2) as percentage_incomplete ,
   round((1.0* nc.valuesum /(nc.valuesum + co.valuesum)) *100,2) as perc_value
FROM incompleteorder nc 
LEFT JOIN allorder co on nc.service_name = co.service_name



/*
group by each service
Compute percentage of incomplete orders 
Compute percentage of revenue loss from incomplete  compare to total revenue


output : name of the service , percentage of incomplete orders , percentage of revenue loss from incomplete orders
*/
