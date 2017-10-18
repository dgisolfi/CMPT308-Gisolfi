# Lab2DBGisolfi
## Database Management Lab 2

###11.Get Dish numbers for dishes ordered from any restaurant by a customer from the same city as that restaurant’s headquarters. 

```sql
SELECT DISTINCT O.DNum
FROM Customers AS C, Restaurants AS R, Orders AS O
WHERE R.HQLocation = C.Hometown	
AND	 C.Cnum = O.CNum
AND 	R.RNum	= O.RNum;
```

__Cardinality__ = 6
​    
    Query11
    DNum
    D1
    D2
    D3
    D4
    D5
    D6


###12.Name the restaurants that have orders from at least one customer who is not from the same city as that restaurant’s headquarters. 

	SELECT DISTINCT R.RestaurantName
	FROM Customers AS C, Restaurants AS R, Orders AS O
	WHERE R.HQLocation <> C.Hometown
	AND C.CNum = O.CNum
	AND R.RNum = O.RNum;

 __Cardinality__ = 8
​    
    RestaurantName
    BombayPalace
    CheesecakeFactory
    Giacomos
    GoldenDragon
    SiamPalace
    SoupPlantation
    SzechuanPalace




###13.Get all pairs of dish numbers such that some customer has ordered both the indicated dishes. 

	SELECT DISTINCT Dish1.DNum, Dish2.DNum
	FROM Orders AS DISH1, Orders AS DISH2
	WHERE Dish1.CNum = DIsh2.CNum
	AND Dish1.DNum <> Dish2.DNum;

__Cardinality__ = 30

###14.Get the total number of restaurants that have order(s) from customer C500. 

	SELECT COUNT(*)  AS R_TOTAL
	FROM (SELECT DISTINCT O.RNum
	             FROM Orders AS O
	             WHERE O.CNum = 'C500');

 __Cardinality__ = 1

    Query14
    R_TOTAL
    4



###15.Get the total quantity for all orders made by customer C100 of dish D1. 

	SELECT COUNT(*) AS ORDER_QTY
	FROM Customers AS C, Restaurants AS R, Orders AS O
	WHERE O.CNum = 'C100'
	AND   O.DNum = 'D1'
	AND   C.CNum = O.CNum
	AND    R.RNum = O.RNum;

__Cardinality__ = 1

    Query15
    ORDER_QTY
    2




###16.For each dish ordered from a restaurant, get the dish number, the restaurant number, and the total quantity (for that dish ordered from that restaurant). 

	SELECT O.DNum, O.RNum, SUM(O.Quant) AS QTY_SUM
	FROM Dishes AS D, Restaurants AS R, Orders AS O
	WHERE D.DNum = O.DNum
	AND    R.RNum	= O.RNum
	AND D.DNum = O.DNum
	GROUP BY O.DNum, O.RNum;

__Cardinality__ = 24

       DNum	RNum	QTY_SUM
        D1	 R10	2
        D1	 R40	8
        D2	 R20	2
        D2	 R40	1
        D3	 R10	6
        D3	 R20	2
        D3	 R30	2
        D3	 R40	7
        D3	 R50	6
        D3	 R60	4
        D3	 R70	8
        D4	 R20	5
        D4	 R40	8
        D5	 R20	1
        D5	 R40	4
        D5	 R50	5
        D5	 R70	1
        D6	 R20	2
        D6	 R30	3
        D6	 R40	5
        D6	 R70	3



###17.Get dish numbers of dishes ordered with an average quantity of more than 3. 

	SELECT DISTINCT O.DNum
	FROM ORDERS AS O, (SELECT DISTINCT AVG(O.Quant > 3) AS ORDER_QTY_AVG FROM ORDERS AS O);

__Cardinality__ = 6

    DNum
    D1
    D2
    D3
    D4
    D5
    D6


###18.Name the restaurants that have orders from Sheldon. 

	SELECT R.RestaurantName, COUNT(*) AS ORDERS
	FROM Orders AS O, Customers AS C, Restaurants AS R
	WHERE C.CustName = 'Sheldon'
	AND   C.CNum = O.CNum
	AND  R.RNum = O.RNum
	GROUP BY R.RestaurantName;

__Cardinality__ = 2

	Query18
	RestaurantName		ORDERS
	CheesecakeFactory	1
	SiamPalace			1



###19.Get the ListPrice of dishes ordered by Sheldon. 

	SELECT D.ListPrice
	FROM Orders AS O, Customers AS C, Dishes AS D
	WHERE C.CustName = 'Sheldon'
	AND   D.DNum = O.DNum
	AND   C.CNum = O.CNum;

__Cardinality__ = 2

    Query19
    ListPrice
    9.99
    9.99



###20.Name the dishes available from any restaurant whose headquarters is in Houston. 

	SELECT DISTINCT D.DishName
	FROM Restaurants AS R, Dishes AS D, Orders AS O
	WHERE R.HQLocation = 'Houston'
	AND D.DNum = O.DNum
	AND O.RNum = R.RNum;

__Cardianlity__ = 3

    DishName
    BurritoGrande
    ChickenSatay
    SteamedDumpling







