--Query6.sql
--Right join
--Author: Daniel Gisolfi
--DB Management Final Project

SELECT DISTINCT Stu_Employee, User_act
FROM Stu_Employee RIGHT JOIN User_act 
ON Stu_Employee.emp_id = User_act.user_id
Order BY User_act.user_id;