--User_Act.sql
--Create and populate Users Table
--Author: Daniel Gisolfi
--DB Management Final Project

CREATE TABLE User_Act(
	staff_user_id	int,
	emp_user_id		int,
	drive_access	int,
	user_name		VARCHAR2(20)	NOT NUll,
	user_pass		VARCHAR2(20)	NOT NUll);

ADD CONSTRAINT fk_staff_user_id FOREIGN KEY (staff_user_id) REFERENCES Staff(staff_id);
ADD CONSTRAINT fk_emp_user_id FOREIGN KEY (emp_user_id) REFERENCES Stu_Employee(emp_id);

--input staff
INSERT INTO User_Act (staff_user_id, drive_access, user_name, user_pass)
	VALUES (1, 3, 'Nick', '******');
INSERT INTO User_Act (staff_user_id, drive_access, user_name, user_pass)
	VALUES (2, 6, 'Marty', '******');
INSERT INTO User_Act (staff_user_id, drive_access, user_name, user_pass)
	VALUES (3, 5, 'Katherine', '******');
INSERT INTO User_Act (staff_user_id, drive_access, user_name, user_pass)
	VALUES (4, 7, 'Harry', '******');
INSERT INTO User_Act (staff_user_id, drive_access, user_name, user_pass)
	VALUES (5, 8, 'Christopher', '******');
INSERT INTO User_Act (staff_user_id, drive_access, user_name, user_pass)
	VALUES (6, 3, 'Chuck', '******');
INSERT INTO User_Act (staff_user_id, drive_access, user_name, user_pass)
	VALUES (7, 9, 'Elizabeth', '******');
INSERT INTO User_Act (staff_user_id, drive_access, user_name, user_pass)
	VALUES (8, 10, 'Greg', '******');
INSERT INTO User_Act (staff_user_id, drive_access, user_name, user_pass)
	VALUES (9, 1, 'Parker', '******');
INSERT INTO User_Act (staff_user_id, drive_access, user_name, user_pass)
	VALUES (10, 5, 'Kaitlin', '******');

--input Employees
INSERT INTO User_Act (emp_user_id, drive_access, user_name, user_pass)
	VALUES (1, 4,  'Ian', '******');
INSERT INTO User_Act (emp_user_id, drive_access, user_name, user_pass)
	VALUES (2, 3, 'Marco', '******');
INSERT INTO User_Act (emp_user_id, drive_access, user_name, user_pass)
	VALUES (3, 6, 'Erin', '******');
INSERT INTO User_Act (emp_user_id, drive_access, user_name, user_pass)
	VALUES (4, 2, 'Frankie', '******');
INSERT INTO User_Act (emp_user_id, drive_access, user_name, user_pass)
	VALUES (5, 8, 'Daniel', '******');
INSERT INTO User_Act (emp_user_id, drive_access, user_name, user_pass)
	VALUES (6, 7, 'Anthony', '******');
INSERT INTO User_Act (emp_user_id, drive_access, user_name, user_pass)
	VALUES (7, 9, 'Brendan', '******');
INSERT INTO User_Act (emp_user_id, drive_access, user_name, user_pass)
	VALUES (8, 3, 'Maya', '******');
INSERT INTO User_Act (emp_user_id, drive_access, user_name, user_pass)
	VALUES (9, 5, 'Nicole', '******');
INSERT INTO User_Act (emp_user_id, drive_access, user_name, user_pass)
	VALUES (10, 7, 'James', '******');
INSERT INTO User_Act (emp_user_id, , user_name, user_pass)
	VALUES (11, 'Gerald', '******');





