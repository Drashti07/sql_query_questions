/*

Find all messages which have references to either user 2 or 3


Easy
ID 9767

Find all messages which have references to either user 2 or 3.

Table
facebook_messages_sent
*/
select * from facebook_messages_sent
where text like '%User 2%' or text like '%User 3%';