--zProdBy.sql
--Create and populate zProdBy Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zProdBy(
	show_num	INT		NOT NULL,
	prod_num	INT 	NOT NULL,
	prod_salary	INT		NOT NULL);

Describe  zProdBy;


--Primary Key: show_num, prod_num
Alter Table zProdBy
ADD CONSTRAINT constraint_zProdBy_pk PRIMARY KEY (show_num, prod_num);

--Foreign Key: show_num references: zTVShow  
Alter Table zProdBy
ADD CONSTRAINT constraint_zProdBy_show_fk FOREIGN KEY (show_num) REFERENCES zTVShow(show_num);

--Foreign Key: prod_num references: zProducer
Alter Table zProdBy
ADD CONSTRAINT constraint_zProdBy_producer_fk FOREIGN KEY (prod_num) REFERENCES zProducer(prod_num);



