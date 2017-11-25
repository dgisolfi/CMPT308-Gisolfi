--Departments.sql
--Create and populate Departments Table
--Author: Daniel Gisolfi
--DB Management Final Project

CREATE TABLE Departments(
	dep_id 			int				NOT NULL,
	dep_name 		VARCHAR2(20)	NOT NULL,
	dep_location	VARCHAR2(20)	NOT NULL,
	dep_room		int 			NOT NULL);



CONSTRAINT pk_CNum PRIMARY KEY (dep_id);

INSERT INTO Customers (dep_id, dep_name, dep_location, dep_room)
	VALUES ( 1, 'Desktop', 'Donnelly', 101);
INSERT INTO Customers (dep_id, dep_name, dep_location, dep_room)
	VALUES ( 2, 'Resnet', 'Donnelly', 101);
INSERT INTO Customers (dep_id, dep_name, dep_location, dep_room)
	VALUES ( 3, 'Help Desk', 'Donnelly', 258);
INSERT INTO Customers (dep_id, dep_name, dep_location, dep_room)
	VALUES ( 4, 'Web Services', 'Library', 310);
INSERT INTO Customers (dep_id, dep_name, dep_location, dep_room)
	VALUES ( 5, 'Applications', 'Donnelly', 260);
INSERT INTO Customers (dep_id, dep_name, dep_location, dep_room)
	VALUES ( 6, 'Digital Education', 'Donnelly', 260);
INSERT INTO Customers (dep_id, dep_name, dep_location, dep_room)
	VALUES ( 7, 'Networking', 'Donnelly', 110);
INSERT INTO Customers (dep_id, dep_name, dep_location, dep_room)
	VALUES ( 8, 'Telecom', 'Donnelly', 110);
INSERT INTO Customers (dep_id, dep_name, dep_location, dep_room)
	VALUES ( 9, 'Card Services', 'Donnelly', 110);

