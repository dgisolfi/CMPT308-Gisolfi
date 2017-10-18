#This file creates the  database for DBLabs 1 - 3
#Daniel Gisolfi

drop database if exists Lab2DBGisolfi; 
create database Lab2DBGisolfi ; 
use Lab2DBGisolfi ;

CREATE TABLE Customers(
CNum 		INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
CustName	TEXT,
Priority	INT,
Hometown	TEXT
);

CREATE TABLE Dishes(
DNum 			INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
DishName		TEXT,
ListPrice		INT,
Calories		INT,
CityOfOrigin	TEXT
);

CREATE TABLE Restaurants(
RNum 			INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
RestaurantName	TEXT,
HQLocation		TEXT
);

CREATE TABLE Orders(
CNum		INT NOT NULL,
DNum		INT NOT NULL,
RNum 		INT NOT NULL,
Quant		INT,
Price 		INT,
PRIMARY KEY(CNum,DNum,RNum)
);