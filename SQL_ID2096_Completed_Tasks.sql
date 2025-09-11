/*

filter on company = 'ClassPass' and January 2022
completed task is action_name' = CompleteTask
if user did not perform action still he/she should be on o/p


ID 2096 : Completed Tasks





Find the number of actions that ClassPass workers did for tasks completed in January 2022. The completed tasks are these rows in the asana_actions table with 'action_name' equal to CompleteTask. Note that each row in the dataset indicates how many actions of a certain type one user has performed in one day and the number of actions is stored in the 'num_actions' column.
Output the ID of the user and a total number of actions they performed for tasks they completed. If a user from this company did not complete any tasks in the given period of time, you should still output their ID and the number 0 in the second column.

Tables
asana_users
asana_actions
*/

select usr.user_id   , coalesce(sum(num_actions),0) as n_completed_tasks
from asana_users usr 
LEFT JOIN asana_actions act 
    ON usr.user_id = act.user_id  and lower(act.action_name) ='CompleteTask'
and YEAR(act.date)= 2022 and MONTH(act.date) = 1 
where usr.company = 'ClassPass'
Group by usr.user_id;