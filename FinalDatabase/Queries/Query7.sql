--Query7.sql
--6 tables
--Author: Daniel Gisolfi
--DB Management Final Project

--Get the Department, Job, salary, user_name and device type deployed to them for all staff with an ID grater than 5
SELECT Departments.dep_name, jobs.job_name, Amends.salary, User_act.user_name, devices.dev_type
FROM Departments, jobs, Amends, staff, User_act, Devices
WHERE Departments.dep_id = jobs.dep_id
AND jobs.job_id = Amends.job_id
AND jobs.job_id = Staff.job_id
AND Staff.staff_id = User_act.staff_user_id
AND Devices.staff_id = staff.staff_id
AND Staff.staff_id > 5;

