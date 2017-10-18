--Restaurants.sql
--Create and populate Restaurants Table
--Author: Daniel Gisolfi
--Oracle Lab 1

CREATE TABLE Restaurants(
	RNum 			VARCHAR2(4)		NOT NULL,
	RestaurantName 	VARCHAR2(20)	NOT NULL,
	HQLocation 		VARCHAR2(25)	NOT NULL,
	CONSTRAINT pk_RNum PRIMARY KEY (RNum));

DESCRIBE Restaurants;

--Insert Records
INSERT INTO Restaurants(RNum, RestaurantName, HQLocation)
	VALUES ('R10', 'SiamPalace','Boston');
INSERT INTO Restaurants(RNum, RestaurantName, HQLocation)
	VALUES ('R20', 'SzechuanPalace','NewOrleans');
INSERT INTO Restaurants(RNum, RestaurantName, HQLocation)
	VALUES ('R30', 'GoldenDragon','LosAngeles');
INSERT INTO Restaurants(RNum, RestaurantName, HQLocation)
	VALUES ('R40', 'CheesecakeFactory','LosAngeles');
INSERT INTO Restaurants(RNum, RestaurantName, HQLocation)
	VALUES ('R50', 'BombayPalace','Houston');
INSERT INTO Restaurants(RNum, RestaurantName, HQLocation)
	VALUES ('R60', 'SoupPlantation','Poughkeepsie');
INSERT INTO Restaurants(RNum, RestaurantName, HQLocation)
	VALUES ('R70', 'Giacomos','Houston');

SELECT *
FROM Customers;