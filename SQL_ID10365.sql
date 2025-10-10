/*
Common Friends Script


Last Updated: July 2025

Medium
ID 10365


You are analyzing a social network dataset at Google. Your task is to find mutual friends between two users, Karl and Hans. There is only one user named Karl and one named Hans in the dataset.


The output should contain 'user_id' and 'user_name' columns.

Tables
users
friends


*/

With Karl as 
(
    select u.user_id , u.user_name  , f.friend_id
    FROM users u
    INNER JOIN friends f 
        ON u.user_id = f.user_id AND user_name IN ( 'Karl')
    
) , 
Hans as 
(
    select u.user_id , u.user_name  , f.friend_id
    FROM users u
    INNER JOIN friends f 
        ON u.user_id = f.user_id AND user_name IN ('Hans')
)
SELECT k.friend_id , u.user_name
FROM Karl k 
JOIN Hans H ON K.friend_id = H.friend_id
JOIN users U on U.user_id = k.friend_id
;

