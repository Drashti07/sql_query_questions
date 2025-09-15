/*
User Exile


Last Updated: July 2025

Easy
ID 10091

Find the number of relationships that user  with id == 1 is not part of.

Table
facebook_friends
*/
SELECT
  sum(CASE WHEN user1 <> 1 and user2 <> 1 THEN 1 ELSE 0 END) as user1_not_in_relationship
FROM facebook_friends