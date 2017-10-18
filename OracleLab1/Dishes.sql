--Dishes.sql
--Create and populate Dishes Table
--Author: Daniel Gisolfi
--Oracle Lab 1

CREATE TABLE Dishes(
	DNum 		 VARCHAR2(4)	NOT NULL,
 	DishName 	 VARCHAR2(20)	NOT NULL,
 	ListPrice 	 DECIMAL(5,2)	NOT NULL, 	--REAL(2) didnt work?
 	Calories	 INTEGER		NOT NULL,
 	CityOfOrigin VARCHAR2(25)	NOT NULL,
	CONSTRAINT pk_DNum PRIMARY KEY (DNum));

DESCRIBE Dishes;

--Insert Records
INSERT INTO Dishes (DNum, DishName, ListPrice, Calories, CityOfOrigin)
	VALUES ('D1', 'BBQbaconBurger', 9.99, 1200,'Houston');
INSERT INTO Dishes (DNum, DishName, ListPrice, Calories, CityOfOrigin)
	VALUES ('D2', 'MeeKrob', 24.99, 600,'Boston');
INSERT INTO Dishes (DNum, DishName, ListPrice, Calories, CityOfOrigin)
	VALUES ('D3', 'ChickenSatay', 19.99, 800,'NewOrleans');
INSERT INTO Dishes (DNum, DishName, ListPrice, Calories, CityOfOrigin)
	VALUES ('D4', 'CashewChicken', 9.99, 1500,'Houston');
INSERT INTO Dishes (DNum, DishName, ListPrice, Calories, CityOfOrigin)
	VALUES ('D5', 'BurritoGrande', 19.99, 1000,'Boston');
INSERT INTO Dishes (DNum, DishName, ListPrice, Calories, CityOfOrigin)
	VALUES ('D6', 'SteamedDumpling', 9.99, 400,'Houston');

SELECT *
FROM Dishes;