/*

Class Performance


Last Updated: October 2025

Medium
ID 10310


You are given a table containing assignment scores of students in a class. Write a query that identifies the largest difference in total score  of all assignments.
Output just the difference in total score (sum of all 3 assignments) between a student with the highest score and a student with the lowest score.

Table
box_scores


*/

With totalscore as 
(
    select id,SUM(assignment1)+ SUM(assignment2) + SUM(assignment3) As total
    from box_scores
    group by id
)
SELECT MAX(total) - MIN(total) as difference_in_scores
FROM totalscore
