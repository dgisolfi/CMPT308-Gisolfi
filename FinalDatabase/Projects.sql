--Projects.sql
--Create and populate Projects Table
--Author: Daniel Gisolfi
--DB Management Final Project

CREATE TABLE Projects(
	prj_id			int				NOT NULL,
	emp_id			int				NOT NULL,
	prj_name		VARCHAR2(20)	NOT NUll,
	prj_descrp		VARCHAR2(20)	NOT NUll);

CONSTRAINT pk_prj_id PRIMARY KEY (prj_id);
CONSTRAINT fk_emp_id_prj FOREIGN KEY (emp_id) REFERENCES Stu_Employee(emp_id);

INSERT INTO Projects (prj_id, emp_id, prj_name, prj_descrp)
	VALUES (1, 3, 'Request Organazation', 'Organizing all requests for data access');
INSERT INTO Projects (prj_id, emp_id, prj_name, prj_descrp)
	VALUES (1, 1, 'Device Deployemnt', 'Organizing all device deployemnts');
INSERT INTO Projects (prj_id, emp_id, prj_name, prj_descrp)
	VALUES (1, 2, 'Device Repairs', 'Organizing all personal device repairs');


