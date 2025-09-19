/*
datalaemur_easy_01
Given a table of candidates and their skills, you're tasked with finding the candidates best suited for an open Data Science job. You want to find candidates who are proficient in Python, Tableau, and PostgreSQL.

Write a query to list the candidates who possess all of the required skills for the job. Sort the output by candidate ID in ascending order.

Assumption:

There are no duplicates in the candidates table.
candidates Table:
Column Name	    Type
candidate_id	  integer
skill	          varchaR
*/

SELECT candidate_id 
FROM candidates 
WHERE lower(skill) in ('python', 'tableau','postgresql')
group by candidate_id
having COUNT(skill) = 3
order by candidate_id;
