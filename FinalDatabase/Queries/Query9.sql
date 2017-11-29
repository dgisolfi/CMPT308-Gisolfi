--Query9.sql
--Query of Lab 2 or 3 level
--Author: Daniel Gisolfi
--DB Management Final Project

--Show all staff and employees and what there jobs are

SELECT Jobs.Job_name, Stu_Employee.Stu_lname
FROM Jobs, Stu_Employee
WHERE Jobs.job_id = Stu_Employee.job_id

UNION

SELECT Jobs.job_name, Staff.Staff_lname
FROM Jobs, Staff
WHERE Jobs.job_id = Staff.job_id;