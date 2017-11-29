--Query4.sql
--Left join
--Author: Daniel Gisolfi
--DB Management Final Project

--Get the names of student employees and the projects they work on if any

SELECT DISTINCT Stu_Employee.stu_lname , Projects.prj_name
FROM Stu_Employee LEFT JOIN Projects 
ON Stu_Employee.emp_id = Projects.emp_id;