--Query5.sql
--Left join
--Author: Daniel Gisolfi
--DB Management Final Project

SELECT DISTINCT Stu_Employee, Shifts
FROM Stu_Employee LEFT JOIN Shifts 
ON Stu_Employee.emp_id = Shifts.emp_id
Order BY Stu_Employee.emp_id;