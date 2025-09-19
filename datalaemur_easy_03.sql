/*
datalaemur_easy_03
filter 2022
tweet posted per user


Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022. Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.

In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.

tweets Table:
Column Name	      Type
tweet_id	        integer
user_id	          integer
msg	              string
tweet_date	      timestamp


*/
with cte as 
(
  SELECT user_id , COUNT(tweet_id)  As tweet_bucket
  FROM tweets
  where YEAR(tweet_date) = 2022
  group by user_id
)
SELECT  tweet_bucket , COUNT(user_id) AS users_num
FROM cte
group by tweet_bucket