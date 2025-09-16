/*
List all interactions of user wth id 4 on either day 0 or 2

Easy
ID 9765

List all interactions of user with id 4 on either day 0 or 2.

Table
facebook_user_interactions

*/

select * from facebook_user_interactions
where day in (0,2) and user1 = 4;