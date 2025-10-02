/*

Find the maximum step reached for every feature


Last Updated: July 2025

Easy
ID 9774

22

Find the maximum step reached for every feature.
Output the feature id along with its maximum step.

Table
facebook_product_features_realizations
*/

select feature_id , MAX(step_reached) as max_step_reached
from facebook_product_features_realizations
GROUP BY feature_id;