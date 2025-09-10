/*
Easy
ID 10540 : Calculate Average Score

Calculate the average score for each project, but only include projects where more than one team member has provided a score.


Your output should include the project ID and the calculated average score for each qualifying project.

Table
project_data
*/
select project_id ,ROUND(AVG(score*1.0),2) AS AVG_SCORE 
from project_data
group by project_id
having COUNT(score) > 1;