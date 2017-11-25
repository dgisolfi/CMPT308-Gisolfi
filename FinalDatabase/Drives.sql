--Drives.sql
--Create and populate Drives Table
--Author: Daniel Gisolfi
--DB Management Final Project

CREATE TABLE Drives(
	drive_id		int				NOT NULL,
	dep_id			int				NOT NULL,
	drive_name		VARCHAR2(20)	NOT NUll,
	max_storage		VARCHAR2(20)	NOT NUll);

CONSTRAINT pk_drive_id PRIMARY KEY (drive_id);
CONSTRAINT fk_dep_id_drive FOREIGN KEY (dep_id) REFERENCES Departments(dep_id);


INSERT INTO Drives (drive_id, dep_id, drive_name, max_storage)
	VALUES (1, 1, 'DesktopSharedDrive', '3TB');
INSERT INTO Drives (drive_id, dep_id, drive_name, max_storage)
	VALUES (2, 2, 'ResnetSharedDrive', '1TB');
INSERT INTO Drives (drive_id, dep_id, drive_name, max_storage)
	VALUES (3, 3, 'HelpDeskSharedDrive', '5TB');
INSERT INTO Drives (drive_id, dep_id, drive_name, max_storage)
	VALUES (4, 4, 'WebServicesSharedDrive', '2TB');
INSERT INTO Drives (drive_id, dep_id, drive_name, max_storage)
	VALUES (5, 5, 'ApplicationsSharedDrive', '1TB');
INSERT INTO Drives (drive_id, dep_id, drive_name, max_storage)
	VALUES (6, 6, 'DigitalEducationSharedDrive', '500GB');
INSERT INTO Drives (drive_id, dep_id, drive_name, max_storage)
	VALUES (7, 7, 'NetworkingSharedDrive', '2TB');
INSERT INTO Drives (drive_id, dep_id, drive_name, max_storage)
	VALUES (8, 8, 'TelecomSharedDrive', '2TB');
INSERT INTO Drives (drive_id, dep_id, drive_name, max_storage)
	VALUES (9, 9, 'CardServicesSharedDrive', '4TB');
INSERT INTO Drives (drive_id, dep_id, drive_name, max_storage)
	VALUES (10, 1, 'DesktopDevicesSharedDrive', '10TB');