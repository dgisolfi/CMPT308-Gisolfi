--Query5.sql
--Right Join
--Author: Daniel Gisolfi
--Big Bang Joins

#Give the Customer name and priority along with the number of the resturant where the order is from soneone with a priority less than 30

SELECT DISTINCT  C.CustName, C.Priority, O.RNum
FROM Customers C RIGHT JOIN Orders O
ON C.Cnum = O.Cnum
WHERE C.Priority < 30;
