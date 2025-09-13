/*

Easy
ID 9685 : Companies With Chinese Speakers

Find companies that have at least 2 Chinese speaking users.

Table
playbook_users

*/

select company_id  
from playbook_users
where language = 'chinese'
group by company_id ,  language
having COUNT(user_id) >=2;