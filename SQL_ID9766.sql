/*
Find the complaint id for the processed complaints of type 1


Easy
ID 9766

Find the complaint id for the processed complaints of type 1.

Table

*/
SELECT DISTINCT complaint_id
FROM facebook_complaints
WHERE type = 1 and processed = 'TRUE';