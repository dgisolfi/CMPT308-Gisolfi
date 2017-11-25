--User_Act.sql
--Create and populate Users Table
--Author: Daniel Gisolfi
--DB Management Final Project

CREATE TABLE User_Act(
	staff_user_id	int,
	emp_user_id		int,
	user_name		VARCHAR2(20)	NOT NUll,
	user_pass		VARCHAR2(20)	NOT NUll);

CONSTRAINT fk_staff_user_id FOREIGN KEY (staff_user_id) REFERENCES Staff(staff_id);
CONSTRAINT fk_emp_user_id FOREIGN KEY (emp_user_id) REFERENCES Stu_Employee(emp_id);

--input staff
INSERT INTO User_Act (staff_user_id, user_name, user_pass)
	VALUES (1, 'Nick', '******');
INSERT INTO User_Act (staff_user_id, user_name, user_pass)
	VALUES (2, 'Marty', '******');
INSERT INTO User_Act (staff_user_id, user_name, user_pass)
	VALUES (3, 'Katherine', '******');
INSERT INTO User_Act (staff_user_id, user_name, user_pass)
	VALUES (4, 'Harry', '******');
INSERT INTO User_Act (staff_user_id, user_name, user_pass)
	VALUES (5, 'Christopher', '******');
INSERT INTO User_Act (staff_user_id, user_name, user_pass)
	VALUES (6, 'Chuck', '******');
INSERT INTO User_Act (staff_user_id, user_name, user_pass)
	VALUES (7, 'Elizabeth', '******');
INSERT INTO User_Act (staff_user_id, user_name, user_pass)
	VALUES (8, 'Greg', '******');
INSERT INTO User_Act (staff_user_id, user_name, user_pass)
	VALUES (9, 'Parker', '******');
INSERT INTO User_Act (staff_user_id, user_name, user_pass)
	VALUES (10, 'Kaitlin', '******');

--input Employees
INSERT INTO User_Act (emp_user_id, user_name, user_pass)
	VALUES (1, 'Ian', '******');
INSERT INTO User_Act (emp_user_id, user_name, user_pass)
	VALUES (2, 'Marco', '******');
INSERT INTO User_Act (emp_user_id, user_name, user_pass)
	VALUES (3, 'Erin', '******');
INSERT INTO User_Act (emp_user_id, user_name, user_pass)
	VALUES (4, 'Frankie', '******');
INSERT INTO User_Act (emp_user_id, user_name, user_pass)
	VALUES (5, 'Daniel', '******');
INSERT INTO User_Act (emp_user_id, user_name, user_pass)
	VALUES (6, 'Anthony', '******');
INSERT INTO User_Act (emp_user_id, user_name, user_pass)
	VALUES (7, 'Brendan', '******');
INSERT INTO User_Act (emp_user_id, user_name, user_pass)
	VALUES (8, 'Maya', '******');
INSERT INTO User_Act (emp_user_id, user_name, user_pass)
	VALUES (9, 'Nicole', '******');
INSERT INTO User_Act (emp_user_id, user_name, user_pass)
	VALUES (10, 'James', '******');






