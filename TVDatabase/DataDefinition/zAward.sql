--zAward.sql
--Create and populate zAward Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zAward(
	award_name	VARCHAR2(30)	NOT NULL,
	award_type	VARCHAR2(30) 	NOT NULL,
	award_year	INT				NOT NULL);

Describe zAward;

Alter Table zAward
ADD CONSTRAINT constraint_zAward_pk PRIMARY KEY (award_name, award_type, award_year);