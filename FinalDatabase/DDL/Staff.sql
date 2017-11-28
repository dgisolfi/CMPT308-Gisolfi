--Staff.sql
--Create and populate Staff Table
--Author: Daniel Gisolfi
--DB Management Final Project

CREATE TABLE Staff(
	staff_id		int				NOT NULL,
	job_id 			int				NOT NULL,
	staff_fname		VARCHAR2(20)	NOT NUll,
	staff_lname		VARCHAR2(20)	NOT NUll);

ADD CONSTRAINT pk_staff_id PRIMARY KEY (staff_id);
ADD CONSTRAINT fk_job_id_staff FOREIGN KEY (job_id) REFERENCES jobs(job_id);

INSERT INTO Staff (staff_id, job_id, stu_fname, stu_lname)
	VALUES (1, 1, 'Nick', 'Smith');
INSERT INTO Staff (staff_id, job_id, stu_fname, stu_lname)
	VALUES (2, 3, 'Marty', 'Philips');
INSERT INTO Staff (staff_id, job_id, stu_fname, stu_lname)
	VALUES (3, 5, 'Katherine', 'Jacobs');
INSERT INTO Staff (staff_id, job_id, stu_fname, stu_lname)
	VALUES (4, 7, 'Harry', 'Potter');
INSERT INTO Staff (staff_id, job_id, stu_fname, stu_lname)
	VALUES (5, 9, 'Christopher', 'Depalma');
INSERT INTO Staff (staff_id, job_id, stu_fname, stu_lname)
	VALUES (6, 11, 'Chuck', 'Bass');
INSERT INTO Staff (staff_id, job_id, stu_fname, stu_lname)
	VALUES (7, 13, 'Elizabeth', 'Brown');
INSERT INTO Staff (staff_id, job_id, stu_fname, stu_lname)
	VALUES (8, 15, 'Greg', 'Demassi');
INSERT INTO Staff (staff_id, job_id, stu_fname, stu_lname)
	VALUES (9, 17, 'Parker', 'Cannon');
INSERT INTO Staff (staff_id, job_id, stu_fname, stu_lname)
	VALUES (10, 19, 'Kaitlin', 'Defranco');


