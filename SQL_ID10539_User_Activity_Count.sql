
/*

Easy
ID 10539 : User Activity Count




Count the unique activity types for each user, ensuring users with no activities are also included.


The output should show each user's ID and their activity type count, with zero for users who have no activities.

Tables
user_profiles
activity_log

*/

select COUNT(DISTINCT activity_type) total_unique_activities, UP.user_id from 
user_profiles up 
left join  activity_log al 
    ON UP.user_id = AL.user_id 
GROUP BY UP.user_id;