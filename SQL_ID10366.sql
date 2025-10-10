/*

FILTER comment_category IS NOT 'short_comments' AND source_channel = 'social_media'


Customer Feedback Analysis


Last Updated: September 2025

Medium
ID 10366

Capital One's marketing team is working on a project to analyze customer feedback from their feedback surveys.


The team sorted the words from the feedback into three different categories:


•	short_comments
•	mid_length_comments
•	long_comments


The team wants to find comments that are not short and that come from social media. The output should include feedback_id, feedback_text, source_channel, and a comment_category, which is already calculated in the data. Include only one row per feedback_id.

*/


select DISTINCT feedback_id , feedback_text , source_channel , comment_category
 
from customer_feedback
WHERE comment_category != 'short_comments' AND source_channel = 'social_media'
ORDER BY feedback_id;