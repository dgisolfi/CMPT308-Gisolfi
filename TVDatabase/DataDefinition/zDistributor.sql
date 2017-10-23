--zDistributor.sql
--Create and populate zDistributor Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zDistributor(
	distr_name	VARCHAR2(30)	NOT NULL,
	distr_loc	VARCHAR2(30) 	NOT NULL,
	parent_num	INT				NOT NULL);

Describe  zDistributor;
