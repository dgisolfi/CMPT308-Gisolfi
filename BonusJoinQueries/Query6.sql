--Query6.sql
--Full Outer Join
--Author: Daniel Gisolfi
--Big Bang Joins

#Get the Dish name and Resturant name where the Dish and Resturant are from the same place.

SELECT D.Dishname, R.RestaurantName
FROM Dishes D Full Outer JOIN Restaurants R
On D.CityOfOrigin = R.HQLocation;