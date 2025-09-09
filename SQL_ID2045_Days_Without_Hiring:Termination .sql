
/*

Medium
ID 2045 : Days Without Hiring/Termination


Write a query to calculate the longest period (in days) that the company has gone without hiring anyone. Also, calculate the longest period without firing anyone. Limit yourself to dates inside the table (last hiring/termination date should be the latest hiring /termination date from table), don't go into future.

Table
uber_employees




*/

With hireperid as(
    select  hire_date ,LAG(hire_date) over(order by hire_date asc) as hire
    from uber_employees
) ,
fire as 
(
    select  termination_date ,LAG(termination_date) over(order by termination_date asc) as termination
    from uber_employees
)
select  MAX(DATEDIFF(day ,hire, hire_date)) as max_hire 
, MAX(DATEDIFF(day ,termination, termination_date)) as max_fire
from hireperid , fire