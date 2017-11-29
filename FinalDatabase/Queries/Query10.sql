--Query10.sql
--Query of Lab 2 or 3 level
--Author: Daniel Gisolfi
--DB Management Final Project

--Give the LastName and room number of where all IT Members work

SELECT Departments.dep_room, Staff.staff_lname LastName
FROM Departments, Jobs, Staff
WHERE Departments.dep_id = Jobs.dep_id 
AND Jobs.job_id = Staff.job_id

UNION


SELECT Departments.dep_room, Stu_Employee.stu_lname LastName
FROM Departments, Jobs, Stu_Employee
WHERE Departments.dep_id = Jobs.dep_id 
AND Jobs.job_id = Stu_Employee.job_id
Order By LastName; 