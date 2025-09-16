/*
Posts with 'nba' substring in keyword

Easy
ID 9768

Find all posts with a keyword that contains 'nba' substring. For such rows output all columns.

Table
facebook_posts
*/
select * from facebook_posts
where post_keywords like '%nba%';