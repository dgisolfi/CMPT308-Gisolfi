--zShowAward.sql
--Create and populate zShowAward Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zShowAward(
	show_num	INT				NOT NULL,
	award_name	VARCHAR2(30) 	NOT NULL,
	award_type	VARCHAR2(30)	NOT NULL,
	award_year	INT				NOT NULL);

Describe  zShowAward;

--Primary Key: show_num award_name award_type award_year 
Alter Table zShowAward
ADD CONSTRAINT constraint_zShowAward_pk PRIMARY KEY (show_num, award_name, award_type, award_year);


--Foreign Key: award_name award_type award_year references: zAward 

Alter Table zShowAward
ADD CONSTRAINT constraint_zShowAward_award_fk FOREIGN KEY (award_name, award_type, award_year) REFERENCES zAward(award_name, award_type, award_year);


--Foreign Key: show_num references: zTVShow
Alter Table zShowAward
ADD CONSTRAINT constraint_zShowAward_show_fk FOREIGN KEY (show_num) REFERENCES zTVShow(show_num)