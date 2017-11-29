--Query7.sql
--6 tables
--Author: Daniel Gisolfi
--DB Management Final Project

SELECT Departments.dep_name, jobs.job_name, Amends.salary, User_act.user_name
FROM Departments, jobs, Amends, staff, Stu_Employee, User_act
WHERE Departments.dep_id = jobs.job_id
AND jobs.job_id = Amends.job_id
AND jobs.job_id = Stu_Employee.job_id
AND jobs.job_id = Staff.job_id
AND Staff.staff_id = User_act.staff_user_id
AND Stu_Employee.emp_id = User_act.emp_user_id
AND Jobs.job_id > 6;

