--zParentComp.sql
--Create and populate zParentComp Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zParentComp(
	parent_num	INT				NOT NULL,
	parent_name	VARCHAR2(30) 	NOT NULL,
	parent_loc	VARCHAR2(30)	NOT NULL);

Describe  zParentComp;

--Primary Key: parent_num
Alter Table zParentComp
ADD CONSTRAINT constraint_parent_num_pk PRIMARY KEY (parent_num);
