/*

ID 9667 : Count users that speak English, German, French or Spanish

 - How many users speak English, German, French or Spanish?
 - Note: Users who speak more than one language are counted only once.

    Table
    playbook_users
    
    
    activated_at:    date
    company_id:    bigint
    created_at:    datetime2
    language:    varchar
    state:    varchar
    user_id:    bigint
        
        
*/

select count(DISTINCT user_id)
from playbook_users
where lower(language) in ('english','french','spanish','german');