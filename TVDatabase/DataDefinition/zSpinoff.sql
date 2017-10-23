--zSpinoff.sql
--Create and populate zSpinoff Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zSpinoff(
	parent_num		INT		NOT NULL,
	spinoff_num		INT 	NOT NULL);

Describe  zSpinoff;

--Primary Key: parent_num, spinoff_num
Alter Table zSpinoff
ADD CONSTRAINT constraint_zSpinoff_pk PRIMARY KEY (parent_num, spinoff_num);

--Foreign Key: parent_num references: show_num in zTVShow 
Alter Table zSpinoff
ADD CONSTRAINT constraint_zSpinoff_parent_fk FOREIGN KEY (parent_num) REFERENCES zTVShow(show_num);

--Foreign Key: spinoff_num references: show_num in zTVShow
Alter Table zSpinoff
ADD CONSTRAINT constraint_zSpinoff_spinoff_fk FOREIGN KEY (spinoff_num) REFERENCES zTVShow(show_num);