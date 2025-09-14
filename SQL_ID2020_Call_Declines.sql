/*
filter : March to April 2020
return : company_id ,


Medium
ID 2020 : Call Declines

Which company had the biggest month call decline from March to April 2020? Return the company_id and calls difference for the company with the highest decline.

Tables
rc_calls
rc_users


*/

With march as 
(
    select company_id , COUNT(call_id) as calls  
    from rc_calls rc 
    JOIN rc_users ru on rc.user_id = ru.user_id
    where MONTH(call_date) =3 and YEAR(call_date) = 2020 
    group by  company_id
) , 
april as 
(
    select company_id , COUNT(call_id) as calls  
    from rc_calls rc 
    JOIN rc_users ru on rc.user_id = ru.user_id
    where MONTH(call_date) =4 and YEAR(call_date) = 2020 
    group by  company_id
)
SELECT TOP 1 m.company_id , a.calls-m.calls as calls_var 
FROM march m 
JOIN april a on m.company_id = a.company_id
order by calls_var 