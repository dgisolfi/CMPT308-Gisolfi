--Query3.sql
--Get None
--Author: Daniel Gisolfi
--DB Management Final Project


--name the students who do not have access to a drive

SELECT Stu_Employee.stu_lname
FROM Stu_Employee
WHERE EXISTS
    (SELECT *
    FROM User_act
    WHERE drive_access IS NULL
    AND Stu_Employee.emp_id = User_act.emp_user_id);