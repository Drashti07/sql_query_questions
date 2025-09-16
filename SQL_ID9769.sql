/*
Find all users who liked a post

Easy
ID 9769

Find all users who liked one or more posts

Table
facebook_reactions
*/

select DISTINCT friend from facebook_reactions
where reaction = 'like';