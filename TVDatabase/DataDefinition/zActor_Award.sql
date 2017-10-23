--zActor_Award.sql
--Create and populate zActor_Award Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zActor_Award(
	actor_num	INT		 		NOT NULL,
	award_name	VARCHAR2(30)	NOT NULL,
	award_type 	VARCHAR2(30) 	NOT NULL,
	award_year 	INT 			NOT NULL);

Describe zActor_Award;

