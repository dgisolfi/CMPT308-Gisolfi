# Lab 3

## Daniel Gisolfi & Brooke Higgins 

###21. Name the restaurants that have orders of at least one dish ordered by customer C100.

```sql
SELECT R.RestaurantName
FROM Restaurants AS R, Orders AS O
WHERE O.CNum = 'C100'
AND O.RNum = R.RNum
```

| RestaurantName    |
| ----------------- |
| CheesecakeFactory |
| SiamPalace        |

**Cardinality = 2**

###22. Get customer numbers for customers that ordered at least one dish ordered by at least one customer who ordered at least one dish whose ListPrice is $9.99.

```sql
SELECT DISTINCT O.CNum 
FROM Orders AS O
WHERE EXISTS 
	(SELECT C.CNum 
  	FROM Customers AS C 
  	WHERE EXISTS
    	(SELECT *
         FROM Dishes AS D
         WHERE D.ListPrice = 9.99
         AND O.CNum = C.CNum
         AND O.DNum = D.DNum));
 	
```

| CNum |
| ---- |
| C100 |
| C300 |
| C400 |
| C500 |

**Cardinality = 4 **

###23. Get customer numbers for customers who have a Priority lower than that of customer C100.

```sql
SELECT C.CNum
FROM Customers AS C
WHERE C.Priority < 20;
```

| CNum |
| :--- |
| C200 |

**Cardinality = 1**

### 24. Get restaurant numbers for restaurants whose HQLocation is first in the alphabetic list of such cities. 

```sql
SELECT TOP 1 R.RNum
FROM Restaurants AS R
ORDER BY R.HQLocation;
```

| RNum |
| ---- |
| R10  |

**Cardinality = 1**

### 25. Get restaurant numbers for restaurants that have orders of dish D1 in an average quantity less than the greatest quantity for any dish ordered from restaurant R10. 

```sql
SELECT DISTINCT O.RNum
FROM Orders AS O
WHERE O.DNum = 'D1'
AND EXISTS
     (SELECT AVG(O.Quant) AS QUANTAVG
      FROM Orders AS O
      HAVING AVG(O.Quant) < (SELECT   MAX(O.Quant) AS MaximumQuant                                                                                                                                                                     
                             FROM Orders AS O
                             WHERE O.RNum = 'R10'));
```

| RNum |
| :--- |
| R10  |
| R40  |

**Cardinality = **2

### 26. Get customer numbers for customers that ordered dish D1 from some restaurant in a quantity greater than the average quantity of dish D1 for that restaurant. 

```sql
SELECT O.Cnum
FROM Orders AS O
WHERE O.DNum = 'D1'
AND   O.Quant > (SELECT   AVG(O.Quant) AS AVGQuant                                                                          				 FROM   Orders   AS   O                                                   				   WHERE  O.DNum  =  'D1')
```

| CNum |
| ---- |
| C100 |

**Cardinality = 1**

### 27. Name the restaurants that have no $9.99 (ListPrice) dishes that were ordered by any customer from Houston. 

```sql
SELECT R.RestaurantName
FROM Orders AS O, Restaurants AS R, Dishes AS D, Customers AS C
WHERE D.ListPrice <> 9.99
AND C.Hometown <> 'Houston'
AND R.RNum = O.RNum
AND C.Cnum = O.CNum
AND D.DNum = O.DNum;
```

| RestaurantName    |
| ----------------- |
| BombayPalace      |
| CheesecakeFactory |
| Giacomos          |
| GoldenDragon      |
| SiamPalace        |
| SoupPlantation    |
| SzechuanPalace    |



**Cardinality = 7**

### 28. Name the restaurants whose only order(s) came from customer C200. 

```sql
SELECT DISTINCT R.RestaurantName
FROM Restaurants AS R
WHERE R.RNum IN
	(SELECT  O.RNum
     FROM   Orders   AS   O
     GROUP   BY   O.RNum
     HAVING   SUM( If  (O.CNum  <>   'C200'));
```

| RestaurantName    |
| ----------------- |
| SiamPalace        |
| SzechuanPalace    |
| GoldenDragon      |
| CheesecakeFactory |
| BombayPalace      |
| Giacomos          |

**Cardinality = 6**

### 29. Get dish numbers for dishes that have been ordered from all restaurants whose headquarters are in Houston. 

```sql
SELECT DISTINCT O.DNum
FROM Orders AS O 
WHERE O.RNum = R.RNum
AND R.HQLocation = 'Houston';
```

| DNum |
| ---- |
| D3   |
| D5   |
| D6   |

**Cardinality = 3**

### 30. Get customer numbers for customers who ordered the same dish from all restaurants. 

```sql
SELECT DISTINCT Ord1.CNum 
FROM Orders AS Order1, Orders AS Order2 
WHERE Order1.CNum = Order2.CNum 
AND Order1.DNum = Order2.DNum
AND Order1.RNum = Order2.RNum;
```

| CNum |
| :--- |
| C100 |
| C200 |
| C300 |
| C400 |
| C500 |

**Cardinality = 5**

### 31. Get restaurant numbers for restaurants that have at least all of the dishes ordered by customer C100. 

```sql
SELECT DISTINCT R.RNum
FROM Restaurants AS R
WHERE NOT EXISTS
         (SELECT *
          FROM Customers AS C
          WHERE C.CNum = 'C100'
          AND NOT EXISTS
          		(SELECT *                                               							  	FROM  Orders AS O
                WHERE O.CNum = C.CNum                                                                     		  		  AND O.RNum = R.RNum));
```

| RNum |
| ---- |
| R10  |
| R40  |

**Cardinality = 2**

### 32. Get all cities with which at least one customer, dish, or restaurant is associated. 

```sql
SELECT C.Hometown
FROM Orders AS O, Customers as C, Restaurants AS R, Dishes AS D
WHERE C.Hometown = R.HQLocation
AND R.HQLocation = D.CityOfOrigin 
AND C.Hometown = D.CityOfOrigin 
AND O.CNum = C.CNum
AND R.RNum = O.RNum
AND D.DNum = O.DNum
```

| Hometown |
| -------- |
| Boston   |
| Houston  |

**Cardinality = 2**

###33. Get dish numbers for dishes that were ordered either by a customer from Houston or from a restaurant whose headquarters is in Houston.

```sql
SELECT O.DNum
FROM Orders AS O, Customers as C, Restaurants AS R
WHERE C.Hometown = 'Houston'
OR R.HQLocation = 'Houston'
AND O.CNum = C.CNum
AND R.RNum = O.RNum;
```

| DNum |
| ---- |
| D1   |
| D2   |
| D3   |
| D4   |
| D5   |
| D6   |

**Cardinality = 6**





