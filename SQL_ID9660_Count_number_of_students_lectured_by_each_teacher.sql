/*


Easy
ID 9660 : Count the number of students lectured by each teacher



Count the number of students lectured by each teacher.

Output the result along with the name of the teacher.

Table
sat_scores


average_sat: float
hrs_studied: float
id: bigint
love: float
sat_math: float
sat_verbal: float
sat_writing: float
school: varchar
student_id: float
teacher: varchar
*/

select  teacher,count(student_id) As n_students 
from sat_scores
group by teacher;