/*
Homework Results


Last Updated: August 2025

Medium
ID 2075

Given the homework results of a group of students, calculate the average grade and the completion rate of each student. A homework is considered not completed if no grade has been assigned.
Output first name of a student, their average grade, and completion rate in percentages. Note that it's possible for several students to have the same first name but their results should still be shown separately.

Tables
allstate_homework
allstate_students
*/


SELECT student_firstname,
       AVG(grade) AS avg_grade,
       (SUM(CASE WHEN grade IS NULL THEN 0 ELSE 1 END) / CAST(COUNT(*) AS FLOAT)) * 100 AS completion_rate
FROM allstate_students s 
JOIN allstate_homework h ON s.student_id = h.student_id
GROUP BY s.student_id, student_firstname