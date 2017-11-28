--Query1.sql
--Get Every 
--Author: Daniel Gisolfi
--DB Management Final Project

SELECT Stu_Employee.stu_lname
FROM Stu_Employee
WHERE NOT EXISTS
	(SELECT *
	FROM User_act
	WHERE NOT EXISTS
		(SELECT *
		FROM 	Drives 
		WHERE  Stu_Employee.emp_id = User_act.user_id
		AND 	Drives.dep_id = 2));