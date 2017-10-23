--zDistributor.sql
--Create and populate zDistributor Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zDistributor(
	distr_name	VARCHAR2(30)	NOT NULL,
	distr_loc	VARCHAR2(30) 	NOT NULL,
	parent_num	INT				NOT NULL);

Describe  zDistributor;


--Primary Key: dist_name
Alter Table zDistributor
ADD CONSTRAINT constraint_dist_name_pk PRIMARY KEY (distr_name);

--Foreign Key: parent_num references: zParentComp
Alter Table zDistributor
ADD CONSTRAINT constraint_parent_num_fk FOREIGN KEY (parent_num) REFERENCES zParentComp(parent_num);