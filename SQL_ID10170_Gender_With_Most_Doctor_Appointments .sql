/*
Easy
ID 10170 : Gender With Most Doctor Appointments

Find the gender that has made the most number of doctor appointments.
Output the gender along with the corresponding number of appointments.

Table
medical_appointments

*/
select TOP 1 COUNT(*)  , gender
from medical_appointments
GROUP BY gender 
order by COUNT(*) desc ;