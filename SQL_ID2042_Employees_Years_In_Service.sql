/*

Medium
ID 2042 : Employees' Years In Service

Find employees who have worked for Uber for more than 2 years (730 days) and check to see if they're still part of the company. Output 'Yes' if they are and 'No' if they are not. Use May 1, 2021 as your date of reference when calculating whether they have worked for more than 2 years since their hire date.
Output the first name, last name, whether or not the employee is still working for Uber, and the number of years at the company.

Table
uber_employees
*/
SELECT * FROM 
(
    select first_name , last_name ,  CASE WHEN termination_date IS NULL THEN 'Yes' ELSE 'No' END AS still,
        round(coalesce( DATEDIFF(day, hire_date, termination_date ),
        DATEDIFF(day, hire_date, '2021-05-01' )) / 365.0, 2) AS years 
    from uber_employees
    where DATEDIFF(DAY, hire_date,'2021-05-01') > 730
) A where years >2