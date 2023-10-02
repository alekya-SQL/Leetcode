/* Write your T-SQL query statement below */
	
select a.student_id,student_name,a.subject_name ,count(e.subject_name) as attended_exams
 from
(
	select distinct student_id,student_name,subject_name from students,subjects
	) a left join Examinations e on e.student_id = a.student_id
	and e.subject_name =a.subject_name
   group by a.student_id,a.subject_name,student_name ,e.subject_name 
   order by a.student_id , student_name,a.subject_name