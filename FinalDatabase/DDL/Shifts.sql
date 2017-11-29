--Shifts.sql
--Create and populate Shifts Table
--Author: Daniel Gisolfi
--DB Management Final Project

CREATE TABLE Shifts(
	emp_id			int		NOT NULL,
	requested_hours	int		NOT NULL,
	hours_worked	int		NOT NUll,
	max_hours		int		NOT NUll);

ADD CONSTRAINT fk_emp_id_shift FOREIGN KEY (emp_id) REFERENCES shifts(emp_id);


INSERT INTO shifts (emp_id, requested_hours, hours_worked, max_hours)
	VALUES (1, 17, 15, 20);
INSERT INTO shifts (emp_id, requested_hours, hours_worked, max_hours)
	VALUES (2, 10, 12, 20);
INSERT INTO shifts (emp_id, requested_hours, hours_worked, max_hours)
	VALUES (3, 12, 11, 20);
INSERT INTO shifts (emp_id, requested_hours, hours_worked, max_hours)
	VALUES (4, 18, 10, 20);
INSERT INTO shifts (emp_id, requested_hours, hours_worked, max_hours)
	VALUES (5, 20, 15, 20);
INSERT INTO shifts (emp_id, requested_hours, hours_worked, max_hours)
	VALUES (6, 17, 13, 20);
INSERT INTO shifts (emp_id, requested_hours, hours_worked, max_hours)
	VALUES (7, 18, 16, 20);
INSERT INTO shifts (emp_id, requested_hours, hours_worked, max_hours)
	VALUES (8, 14, 11, 20);
INSERT INTO shifts (emp_id, requested_hours, hours_worked, max_hours)
	VALUES (9, 10, 4, 20);
INSERT INTO shifts (emp_id, requested_hours, hours_worked, max_hours)
	VALUES (10, 13, 9, 20);
INSERT INTO shifts (emp_id, requested_hours, hours_worked, max_hours)
	VALUES (11, 17, 7, 20);
