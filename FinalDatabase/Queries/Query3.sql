--Query3.sql
--Get Only
--Author: Daniel Gisolfi
--DB Management Final Project


SELECT DISTINCT Departments.dep_name
FROM Departments
WHERE EXISTS
	(SELECT *
	FROM  Jobs
    AND  NOT EXISTS
		(SELECT *
		FROM Student_Employee
		WHERE  Departments.dep_id = jobs.dep_id
		AND jobs.job_id = Student_Employee.jobs_id
		AND Student_Employee.student_lname = 'Gisolfi'));