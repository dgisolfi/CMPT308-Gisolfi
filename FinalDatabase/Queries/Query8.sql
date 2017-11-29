--Query8.sql
--Query of Lab 2 or 3 level
--Author: Daniel Gisolfi
--DB Management Final Project

--Get the number of hours still needed to be worked by an employee to reach requsted hours as well as there name

SELECT Stu_Employee.stu_lname, SUM(Shifts.requested_hours - Shifts.hours_worked)
FROM Stu_Employee, Shifts
WHERE Shifts.hours_worked < Shifts.requested_hours
AND Stu_Employee.emp_id = Shifts.emp_id
GROUP BY Stu_Employee.stu_lname;

