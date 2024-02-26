# Write your MySQL query statement below
select s1.student_id,s1.student_name,s2.subject_name,COUNT(e1.subject_name) as attended_exams
from Students s1
cross join subjects s2
left join Examinations e1
ON s1.student_id = e1.student_id AND s2.subject_name = e1.subject_name
GROUP BY s1.student_id, s2.subject_name
ORDER BY s1.student_id, s2.subject_name;

