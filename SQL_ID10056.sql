/*
Cast stars column values to integer and return with all other column values

Easy
ID 10056

Cast stars column values to integer and return with all other column values. Be aware that certain rows contain non integer values.
You need to remove such rows. You are allowed to examine and explore the dataset before making a solution.

Table
yelp_reviews


*/

select business_name,review_id, user_id	, CAST(stars AS int) AS stars,	review_date,	review_text,	funny,	useful,	cool
from yelp_reviews
where stars !='?';