--Query6.sql
--Full outer join
--Author: Daniel Gisolfi
--DB Management Final Project

--Get the names of all people woith jobs at marist divided by if there a student employee or staff

SELECT DISTINCT Stu_Employee.stu_lname, Staff.staff_lname
FROM Stu_Employee FULL OUTER JOIN Staff 
ON Stu_Employee.job_id = Staff.job_id;
