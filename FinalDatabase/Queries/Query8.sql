--Query8.sql
--Full outer join
--Author: Daniel Gisolfi
--DB Management Final Project

SELECT Departments.dep_name, jobs.job_name, Amends.salary
FROM Departments, jobs, Amends, staff, Stu_Employee,User_act
WHERE Departments.dep_id = jobs.job_id
AND jobs.job_id = Amends.job_id
