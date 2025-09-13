
/*

Medium
ID 2060 : Manager of the Largest Department



Given a list of a company’s employees, find the first and last names of all employees whose position contains the word “manager” and who work in the largest department(s) — that is, departments with the highest number of employees. If multiple departments share the same largest size, return managers from all such departments.

Table
az_employees

*/
With n_emp as 
(
    SELECT count(id) as n_emp , department_name
    from az_employees
    group by department_name
)
select first_name,	last_name
from (
    select az.first_name,	az.last_name  , az.department_name
        , RANK() over(order by n_emp desc) as rnk
    from az_employees  az
    JOIN n_emp emp on emp.department_name = az.department_name
    where lower(az.position) like '%manager%'
    ) a 
where rnk = 1    