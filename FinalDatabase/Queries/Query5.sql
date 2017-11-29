--Query5.sql
--Right join
--Author: Daniel Gisolfi
--DB Management Final Project

--Get all Drive Access numbers and the user's that have access to them if any

SELECT DISTINCT Stu_Employee.stu_lname, User_act.drive_access
FROM Stu_Employee RIGHT JOIN User_act 
ON Stu_Employee.emp_id = User_act.emp_user_id;