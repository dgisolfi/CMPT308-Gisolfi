--Query1.sql
--Natural Join
--Author: Daniel Gisolfi
--Big Bang Joins

#Get the Name, Priority and Price of every purchase.

SELECT C.CustName, C.Priority, O.Price
FROM Customers C Natural JOIN Orders O;
