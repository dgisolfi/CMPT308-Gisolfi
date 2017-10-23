--zProducer.sql
--Create and populate zProducer Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zProducer(
	prod_num	INT				NOT NULL,
	prod_name	VARCHAR2(30) 	NOT NULL,
	prod_age	INT				NOT NULL,
	agent_num	INT				NOT NULL);

Describe  zProducer;
