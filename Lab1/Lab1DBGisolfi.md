# Lab1DBGisolfi
## Database Management Lab 1
### 1.Get full details (all fields) of all Restaurants whose headquarters is in Houston.
SELECT *

FROM Restaurants AS R

WHERE R.HQLocation = 'Houston';

    Query1
    RNum	RestaurantName	HQLocation
    R50	    BombayPalace	Houston
    R70	    Giacomos     	Houston

__Cardinality__ = 2

### 2.Get customer numbers for customers who ordered from restaurant R10.

SELECT CNum

FROM Orders

WHERE RNum = 'R10';
​    
    Query2
    CNum
    C100
    C200
    C300

__Cardinality__ = 3


### 3.Get full details about all orders where the quantity is in the range 3 to 7, inclusive.
SELECT *
FROM Orders
WHERE Orders.Quant BETWEEN 3 AND 7;



    Query3
    CNum	DNum	RNum	Quant	Price
    C100	D1		R40		7		9.99
    C200	D3		R10		4		16.99
    C200	D3		R40		5		19.99
    C200	D3		R50		6		18.99
    C200	D3		R60		4		19.99
    C300	D4		R20		5		22.99
    C400	D6		R30		3		4.99
    C400	D6		R70		3		2.99
    C500	D5		R50		5		8.99
    C500	D5		R40		4		8.99
    C500	D6		R40		5		3.99

__Cardinality__ = 11

### 4. Get all ListPrice/cityOfOrigin combinations from Dishes.

SELECT D.ListPrice, D.CityOfOrigin
FROM Dishes AS D;

    Query4
    ListPrice	 CityOfOrigin
    9.99		Houston
    24.99		Boston
    19.99		NewOrleans
    9.99		Houston
    9.99		Boston
    9.99		Houston

__Cardinality__ = 6 

### 5. Get all CNum/DNum/RNum triples such that the indicated customer, dish and restaurant are all colocated (associated with the same city). (This doesn’t use the Orders table.)

SELECT C.CNum, D.DNum, R.RNum
FROM Customers AS C, Dishes AS D, Restaurants AS R
WHERE C.Hometown = D.CityOfOrigin
AND  D.CityOfOrigin = R.HQLocation;

    Query5
    CNum	DNum	RNum
    C200	D5		R10
    C300	D5		R10
    C200	D2		R10
    C300	D2		R10
    C100	D6		R50
    C400	D6		R50
    C100	D4		R50
    C400	D4		R50
    C100	D1		R50
    C400	D1		R50
    C100	D6		R70
    C400	D6		R70
    C100	D4		R70
    C400	D4		R70
    C100	D1		R70
    C400	D1		R70

__Cardinality__ = 16

### 6. Get all CNum/DNum/RNum triples such that the indicated customer, dish and restaurant are not all co-located (associated with the same city). (This doesn’t use the Orders table.)

SELECT DISTINCT C.CNum, D.DNum, R.RNum

FROM Customers AS C, Dishes AS D, Restaurants AS R

WHERE C.Hometown <> D.CityOfOrigin

AND  D.CityOfOrigin <> R.HQLocation;

__Cardinality__ = 111





### 7. Get all CNum/DNum/RNum triples such that no two of the indicated customer, dish and restaurant are co-located (associated with the same city). (This doesn’t use the Orders table.)

SELECT C.CNum, D.DNum, R.RNum

FROM Customers AS C, Dishes AS D, Restaurants AS R

WHERE C.Hometown <> D.CityOfOrigin

AND  D.CityOfOrigin <> R.HQLocation

AND  C.Hometown <> R.HQLocation;

__Cardinality__ = 79

### 8. Get Dish numbers for dishes ordered by a customer from Houston.

SELECT DISTINCT O.DNUM

FROM Customers AS C, Orders AS O

WHERE C.Hometown = 'Houston'

AND C.CNum = O.CNum;

    Query8
    DNUM
    D1
    D6


__Cardinality__ = 2

### 9. Get Dish numbers for dishes ordered by a customer from Houston from a restaurant whose headquarters is in Houston.

SELECT DISTINCT O.DNUM

FROM Customers AS C, Orders AS O, Restaurants AS R

WHERE C.Hometown = 'Houston'

AND R.HQLocation = 'Houston'

AND C.CNum = O.CNum

AND O.RNum = R.RNum;

    Query9
    DNUM
    D6

__Cardinality__ = 1

### 10. Get all pairs of city names such that a customer from the first city ordered from a restaurant whose headquarters is in the second city.

SELECT DISTINCT C.Hometown, R.HQlocation

FROM Customers AS C, Restaurants AS R, Orders AS O

WHERE C.Hometown <> R.HQLocation

AND C.CNum = O.CNum

AND R.RNum = O.RNum;

    Query10
    Hometown	HQlocation
    Boston	Houston
    Boston	LosAngeles
    Boston	NewOrleans
    Boston	Poughkeepsie
    Houston	Boston
    Houston	LosAngeles
    LosAngeles	Houston
    LosAngeles	NewOrleans

__Cardinality__ = 8


