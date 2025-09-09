/*
ID 9669 : 
    Count the number of speakers for each language.
    Sort the result based on the number of speakers in descending order.

Table : playbook_users
    activated_at : date
    company_id:  : bigint
    created_at:  : datetime2
    language:    : varchar
    state:       : varchar
    user_id:     :  bigint


*/


select language , count(user_id) As  n_speakers
from playbook_users
group by language
order by n_speakers desc;