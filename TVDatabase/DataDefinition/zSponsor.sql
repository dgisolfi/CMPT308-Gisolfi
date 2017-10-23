--zSponsor.sql
--Create and populate zSponsor Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zSponsor(
	sponsor_num		INT				NOT NULL,
	sponsor_name	VARCHAR2(30)	NOT NULL,
	parent_num		INT 			NOT NULL);

Describe  zSponsor;

--Primary Key: sponsor_name
Alter Table zSponsor
ADD CONSTRAINT constraint_zSponsor_sponsor_pk PRIMARY KEY (sponsor_num);

--Foreign Key: parent_num references: zParentComp
Alter Table zSponsor
ADD CONSTRAINT constraint_zSponsor_parent_fk FOREIGN KEY (parent_num) REFERENCES zParentComp(parent_num);
