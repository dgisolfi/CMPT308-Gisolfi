--Orders.sql
--Create and populate Orders Table
--Author: Daniel Gisolfi
--Oracle Lab 1

CREATE TABLE Orders(
	CNUM	VARCHAR2(4)		NOT NULL,
	RNUM	VARCHAR2(4)		NOT NULL,
	DNUM 	VARCHAR2(4)		NOT NULL,
 	Price 	DECIMAL(5,2)	NOT NULL,
 	Quant	INTEGER			NOT NULL,
	CONSTRAINT fk_orders_customers FOREIGN KEY (CNUM) REFERENCES Customers(CNUM),
	CONSTRAINT fk_orders_dishes FOREIGN KEY (DNUM) REFERENCES Dishes(DNUM),
 	CONSTRAINT fk_orders_restaurants FOREIGN KEY (RNUM) REFERENCES Restaurants(RNUM));

DESCRIBE Restaurants;

--Insert Records
--Customer 1
INSERT INTO Orders
VALUES('C100', 'D1', 'R10', 2, 8.99);

INSERT INTO Orders
VALUES('C100', 'D1', 'R40', 7, 9.99);

--Customer 2
INSERT INTO Orders
VALUES('C200', 'D3', 'R10', 4, 16.99);

INSERT INTO Orders
VALUES('C200', 'D3', 'R20', 2, 15.99);

INSERT INTO Orders
VALUES('C200', 'D3', 'R30', 2, 17.99);

INSERT INTO Orders
VALUES('C200', 'D3', 'R40', 5, 19.99);

INSERT INTO Orders
VALUES('C200', 'D3', 'R50', 6, 18.99);

INSERT INTO Orders
VALUES('C200', 'D3', 'R60', 4, 19.99);

INSERT INTO Orders
VALUES('C200', 'D3', 'R70', 8, 15.99);

INSERT INTO Orders
VALUES('C200', 'D5', 'R20', 1, 8.99);

--Customer 3

INSERT INTO Orders
VALUES('C300', 'D3', 'R10', 2, 16.99);

INSERT INTO Orders
VALUES('C300', 'D4', 'R20', 5, 22.99);

--Customer 4

INSERT INTO Orders
VALUES('C400', 'D6', 'R30', 3, 4.99);

INSERT INTO Orders
VALUES('C400', 'D6', 'R70', 3, 2.99);

--Customer 5

INSERT INTO Orders
VALUES('C500', 'D2', 'R20', 2, 23.99);

INSERT INTO Orders
VALUES('C500', 'D2', 'R40', 1, 24.99);

INSERT INTO Orders
VALUES('C500', 'D5', 'R50', 5, 8.99);

INSERT INTO Orders
VALUES('C500', 'D5', 'R70', 1, 9.99);

INSERT INTO Orders
VALUES('C500', 'D6', 'R20', 2, 1.99);

INSERT INTO Orders
VALUES('C500', 'D1', 'R40', 1, 9.99);

INSERT INTO Orders
VALUES('C500', 'D3', 'R40', 2, 19.99);

INSERT INTO Orders
VALUES('C500', 'D4', 'R40', 8, 23.99);

INSERT INTO Orders
VALUES('C500', 'D5', 'R40', 2, 8.99);

INSERT INTO Orders
VALUES('C500', 'D6', 'R40', 2, 3.99);

SELECT *
FROM Orders;