--Query3.sql
--Get None
--Author: Daniel Gisolfi
--DB Management Final Project

SELECT DISTINCT Departments.dep_name
FROM Departments
WHERE NOT EXISTS
	(SELECT *
	FROM  Jobs
    AND  EXISTS
		(SELECT *
		FROM Student_Employee
		WHERE  
		AND 
		AND ));