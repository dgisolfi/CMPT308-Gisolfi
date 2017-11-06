--Query2.sql
--Join Using
--Author: Daniel Gisolfi
--Big Bang Joins

#Get the Dish name, calories and quantity on had for all dishes

SELECT D.DishName, D.Calories, O.Quant
FROM Dishes D JOIN Orders O USING(DNUM);