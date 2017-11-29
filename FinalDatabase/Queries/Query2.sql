--Query2.sql
--Get Only
--Author: Daniel Gisolfi
--DB Management Final Project

--Get the last name of students who only work 17 hours

SELECT Stu_Employee.stu_lname
FROM Stu_Employee
WHERE EXISTS
	(SELECT *
	FROM Shifts
	WHERE Shifts.requested_hours = 17
    AND Shifts.emp_id = Stu_Employee.emp_id); 