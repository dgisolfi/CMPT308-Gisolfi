--Query3.sql
--Join ON
--Author: Daniel Gisolfi
--Big Bang Joins

#Get all resturants, there locations and the quantity they have on hand for all dishes

SELECT R.RestaurantName, R.HQLocation, O.Quant
FROM Restaurants R JOIN Orders O
ON R.Rnum = O.RNum
ORDER BY R.RestaurantName;