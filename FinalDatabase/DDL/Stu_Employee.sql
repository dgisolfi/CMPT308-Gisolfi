--Stu_Employee.sql
--Create and populate Student Employee Table
--Author: Daniel Gisolfi
--DB Management Final Project

CREATE TABLE Stu_Employee(
	emp_id			int				NOT NULL,
	job_id 			int				NOT NULL,
	manager_id		int 			NOT NULL,
	stu_fname		VARCHAR2(20)	NOT NUll,
	stu_lname		VARCHAR2(20)	NOT NUll,
	stu_status		SET('resident','commuter') NOT NULL,);

ADD CONSTRAINT pk_emp_id PRIMARY KEY (emp_id);
ADD CONSTRAINT fk_job_id_emp FOREIGN KEY (job_id) REFERENCES jobs(job_id);
CONSTRAINT fk_manager_id_emp FOREIGN KEY (manager_id) REFERENCES Staff(staff_id);

INSERT INTO Stu_Employee (emp_id, job_id, manager_id, stu_fname, stu_lname, stu_status)
	VALUES (1, 2, 1, 'Ian', 'Smith', 'resident');
INSERT INTO Stu_Employee (emp_id, job_id, manager_id, stu_fname, stu_lname, stu_status)
	VALUES (2, 4, 2, 'Marco', 'James', 'commuter');
INSERT INTO Stu_Employee (emp_id, job_id, manager_id, stu_fname, stu_lname, stu_status)
	VALUES (3, 6, 3, 'Erin', 'mills', 'resident');
INSERT INTO Stu_Employee (emp_id, job_id, manager_id, stu_fname, stu_lname, stu_status)
	VALUES (4, 8, 4, 'Frankie', 'shayman', 'resident');
INSERT INTO Stu_Employee (emp_id, job_id, manager_id, stu_fname, stu_lname, stu_status)
	VALUES (5, 6, 5, 'Daniel', 'Gisolfi', 'commuter');
INSERT INTO Stu_Employee (emp_id, job_id, manager_id, stu_fname, stu_lname, stu_status)
	VALUES (6, 10, 6, 'Anthony', 'Diamco', 'resident');
INSERT INTO Stu_Employee (emp_id, job_id, manager_id, stu_fname, stu_lname, stu_status)
	VALUES (7, 12, 7, 'Brendan', 'Kelly', 'resident');
INSERT INTO Stu_Employee (emp_id, job_id, manager_id, stu_fname, stu_lname, stu_status)
	VALUES (8, 14, 8, 'Maya', 'James', 'resident');
INSERT INTO Stu_Employee (emp_id, job_id, manager_id, stu_fname, stu_lname, stu_status)
	VALUES (9, 16, 9, 'Nicole', 'Ferone', 'resident');
INSERT INTO Stu_Employee (emp_id, job_id, manager_id, stu_fname, stu_lname, stu_status)
	VALUES (10, 18, 10, 'James', 'Corcoran', 'commuter');


