--Query1.sql
--Get Every 
--Author: Daniel Gisolfi
--DB Management Final Project

#Name every job that has an employee who works more than 10 hours
SELECT jobs.job_name
FROM jobs
WHERE NOT EXISTS
	(SELECT *
	FROM Stu_Employee
    WHERE Jobs.job_id = Stu_Employee.job_id
	AND NOT EXISTS
		(SELECT *
		FROM Shifts
		WHERE  Stu_Employee.emp_id = Shifts.emp_id
		AND   Shifts.Requested_worked > 10));
        
        
