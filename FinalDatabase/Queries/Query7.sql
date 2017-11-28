--Query7.sql
--Full outer join
--Author: Daniel Gisolfi
--DB Management Final Project

SELECT DISTINCT Stu_Employee, Staff
FROM Stu_Employee FULL OUTER JOIN Staff 
ON Stu_Employee.job_id
Order BY Stu_Employee.job_id;