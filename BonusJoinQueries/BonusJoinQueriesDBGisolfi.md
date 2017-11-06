# Bonus Join Queries for Big Bang Database

##Daniel Gisolfi

### Query 1

Get the Name, Priority and Price of every purchase.

```sql
SELECT C.CustName, C.Priority, O.Price
FROM Customers C Natural JOIN Orders O;
```

<img src="file:///Users/daniel/code-repos/CMPT308-Gisolfi/BonusJoinQueries/images/1.png" width="500px">

Cardinality = 23

### Query 2

Get the Dish name, calories and quantity on had for all dishes

```sql
SELECT D.DishName, D.Calories, O.Quant
FROM Dishes D JOIN Orders O USING(DNUM);
```



<img src="file:///Users/daniel/code-repos/CMPT308-Gisolfi/BonusJoinQueries/images/2.png" width="500px">

Cardinality = 23

### Query 3

Get all resturants, there locations and the quantity they have on hand for all dishes

```sql
SELECT R.RestaurantName, R.HQLocation, O.Quant
FROM Restaurants R JOIN Orders O
ON R.Rnum = O.RNum
ORDER BY R.RestaurantName;
```

<img src="file:///Users/daniel/code-repos/CMPT308-Gisolfi/BonusJoinQueries/images/3.png" width="500px">

Cardinality = 23

### Query 4

Get the Name, city of origin and price of all dishes that cost less than 15.99

```sql
SELECT DISTINCT  D.DishName, D.CityOfOrigin, O.Price
FROM Orders O LEFT JOIN Dishes D
ON D.Dnum = O.Dnum
WHERE O.Price < 15.99;
```

<img src="file:///Users/daniel/code-repos/CMPT308-Gisolfi/BonusJoinQueries/images/4.png" width="500px">

Cardinality = 7

### Query 5

Give the Customer name and priority along with the number of the resturant where the order is from soneone with a priority less than 30

```sql
SELECT DISTINCT  C.CustName, C.Priority, O.RNum
FROM Customers C RIGHT JOIN Orders O
ON C.Cnum = O.Cnum
WHERE C.Priority < 30;
```



<img src="file:///Users/daniel/code-repos/CMPT308-Gisolfi/BonusJoinQueries/images/5.png" width="500px">

Cardinality = 10

### Query 6

Get the Dish name and Resturant name where the Dish and Resturant are from the same place.

```sql
SELECT D.Dishname, R.RestaurantName
FROM Dishes D Full Outer JOIN Restaurants R
On D.CityOfOrigin = R.HQLocation;
```

<img src="file:///Users/daniel/code-repos/CMPT308-Gisolfi/BonusJoinQueries/images/6.png" width="500px">

Cardinality = 10