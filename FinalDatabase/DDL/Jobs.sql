--jobs.sql
--Create and populate Jobs Table
--Author: Daniel Gisolfi
--DB Management Final Project

CREATE TABLE Jobs(
	job_id 			int				NOT NULL,
	dep_id			int				NOT NUll,
	job_name 		VARCHAR2(20)	NOT NULL,
	job_descrp		VARCHAR2(40)	NOT NULL);

ADD CONSTRAINT pk_job_id PRIMARY KEY (job_id);
ADD CONSTRAINT fk_dep_id_jobs FOREIGN KEY (dep_id) REFERENCES Departments(dep_id);


--Insert all entries for all departments
INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 1, 1, 'Desktop Admin', 'Manage employees and runs the Desktop department');
INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 2, 1,'Desktop Employee', 'Works in the Desktop department');

INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 3, 2,'Resnet Admin', 'Manage employees and runs the Resnet department');
INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 4, 2,'Resnet Employee', 'Works in the Resnet department');

INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 5, 3,'Help Desk Admin', 'Manages employees and runs the Help Desk department');
INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 6, 3,'Help Desk Employee', 'Works in the Help Desk department');

INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 7, 4,'Web Services Admin', 'Manage employees and runs the Web Services department');
INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 8, 4,'Web Services Employee', 'Works in the Web Services department');	

INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 9, 5,'Applications Admin', 'Manage employees and runs the Applications department');
INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 10, 5,'Applications Employee', 'Works in the Applications department');	

INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 11, 6,'Digital Education Admin', 'Manage employees and runs the Digital Education department');
INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 12, 6,'Digital Education Employee', 'Works in the Digital Education department');

INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 13, 7,'Networking Admin', 'Manage employees and runs the Networking department');
INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 14, 7,'Networking Employee', 'Works in the Networking department');

INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 15, 8,'Telecom Admin', 'Manage employees and runs the Telecom department');
INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 16, 8,'Telecom Employee', 'Works in the Telecom department');

INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 17, 9,'Card Services Admin', 'Manage employees and runs the Card Services department');
INSERT INTO Jobs (job_id, dep_id, job_name, job_descrp)
	VALUES ( 18, 9,'Card Services Employee', 'Works in the Card Services department');

