--Customers.sql
--Create and populate Customers Table
--Author: Daniel Gisolfi
--Oracle Lab 1

CREATE TABLE IF NOT EXISTS Customers(
	CNum 		VARCHAR2(4)		NOT NULL,
	CustName 	VARCHAR2(20)	NOT NULL,
	Priority 	INTEGER			NOT NULL,
	HomeTown 	VARCHAR2(25)	NOT NULL,
	CONSTRAINT pk_CNum PRIMARY KEY (CNum));

DESCRIBE Customers;

--Insert records
INSERT INTO Customers (CNum, CustName, Priority, HomeTown)
	VALUES ('C100', 'Sheldon', 20, 'Houston');
INSERT INTO Customers (CNum, CustName, Priority, HomeTown)
	VALUES ('C200', 'Leonard', 10, 'Boston');
INSERT INTO Customers (CNum, CustName, Priority, HomeTown)
	VALUES ('C300', 'Raj', 30, 'Boston');
INSERT INTO Customers (CNum, CustName, Priority, HomeTown)
	VALUES ('C400', 'Penny', 20, 'Houston');
INSERT INTO Customers (CNum, CustName, Priority, HomeTown)
  	VALUES ('C500', 'Howard', 30, 'LosAngeles');

SELECT *
FROM Customers;