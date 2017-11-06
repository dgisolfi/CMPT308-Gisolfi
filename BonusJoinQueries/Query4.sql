--Query4.sql
--Left Join
--Author: Daniel Gisolfi
--Big Bang Joins

#Get the Name, city of origin and price of all dishes that cost less than 15.99

SELECT DISTINCT  D.DishName, D.CityOfOrigin, O.Price
FROM Orders O LEFT JOIN Dishes D
ON D.Dnum = O.Dnum
WHERE O.Price < 15.99;
