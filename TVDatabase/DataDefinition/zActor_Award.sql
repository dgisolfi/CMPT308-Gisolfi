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

--zActor_Award
--Primary Key: actor_num award_name award_type award_year
Alter Table zActor_Award
ADD CONSTRAINT constraint_zActor_Award_pk PRIMARY KEY (actor_num, award_name, award_type, award_year);

--Foreign Key: award_name award_type award_year references: zAward 
Alter Table zActor_Award
ADD CONSTRAINT constraint_zActor_award_fk FOREIGN KEY (award_name, award_type, award_year) REFERENCES zAward(award_name, award_type, award_year);

--Foreign Key: actor_num references: zActor
Alter Table zActor_Award
ADD CONSTRAINT constraint_actor_num_fk FOREIGN KEY (actor_num) REFERENCES zActor(actor_num);