--Amends.sql
--Create and populate Amends Table
--Author: Daniel Gisolfi
--DB Management Final Project

CREATE TABLE Amends(
	job_id 			int				NOT NULL,
	salary			int,		
	wage 			DECIMAL(5,2));
	
CONSTRAINT fk_job_id_Amends FOREIGN KEY (job_id) REFERENCES Amends(job_id);

--Input all staff pay
INSERT INTO Amends (job_id, salary)
	VALUES (1, 60000);
INSERT INTO Amends (job_id, salary)
	VALUES (3, 60000);
INSERT INTO Amends (job_id, salary)
	VALUES (5, 60000);
INSERT INTO Amends (job_id, salary)
	VALUES (7, 60000);
INSERT INTO Amends (job_id, salary)
	VALUES (9, 60000);
INSERT INTO Amends (job_id, salary)
	VALUES (11, 60000);
INSERT INTO Amends (job_id, salary)
	VALUES (13, 60000);
INSERT INTO Amends (job_id, salary)
	VALUES (15, 60000);
INSERT INTO Amends (job_id, salary)
	VALUES (17, 60000);

--Insert all employees pay
INSERT INTO Amends (job_id, wage)
	VALUES (2, 10.40);
INSERT INTO Amends (job_id, wage)
	VALUES (4, 10.40);
INSERT INTO Amends (job_id, wage)
	VALUES (6, 10.40);
INSERT INTO Amends (job_id, wage)
	VALUES (8, 10.40);
INSERT INTO Amends (job_id, wage)
	VALUES (10, 10.40);
INSERT INTO Amends (job_id, wage)
	VALUES (12, 10.40);
INSERT INTO Amends (job_id, wage)
	VALUES (14, 10.40);
INSERT INTO Amends (job_id, wage)
	VALUES (16, 10.40);
INSERT INTO Amends (job_id, wage)
	VALUES (18, 10.40);



