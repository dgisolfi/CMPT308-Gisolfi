--zProdAward.sql
--Create and populate zProdAward Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zProdAward(
	prod_num	INT				NOT NULL,
	award_name	VARCHAR2(30) 	NOT NULL,
	award_type	VARCHAR2(30)	NOT NULL,
	award_year	INT				NOT NULL);

Describe  zProdAward;

--Primary Key: prod_num award_name award_type award_year
Alter Table zProdAward
ADD CONSTRAINT constraint_zProdAward_pk PRIMARY KEY (prod_num, award_name, award_type, award_year);

--Foreign Key: award_name award_type award_year references: zAward 
Alter Table zProdAward
ADD CONSTRAINT constraint_zProdAward_award_fk FOREIGN KEY (award_name, award_type, award_year) REFERENCES zAward(award_name, award_type, award_year);

--Foreign Key: prod_num refrences: zProducer
Alter Table zProdAward
ADD CONSTRAINT constraint_zProdAward_prod_fk FOREIGN KEY (prod_num) REFERENCES zProducer(prod_num);