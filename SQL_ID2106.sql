/*
Rows With Missing Values


Last Updated: September 2025

Medium
ID 2106


The data engineering team at YouTube want to clean the dataset user_flags. In particular, they want to examine rows that have missing values in more than one column. List these rows.

Table
user_flags
*/
SELECT 
    *
FROM
    user_flags
WHERE
    CASE WHEN user_firstname IS NULL THEN 1 ELSE 0 END + 
    CASE WHEN user_lastname IS NULL THEN 1 ELSE 0 END +
    CASE WHEN video_id IS NULL THEN 1 ELSE 0 END + 
    CASE WHEN flag_id IS NULL THEN 1 ELSE 0 END > 1