--zActor.sql
--Create and populate zActor Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zActor(
	actor_num	INT		 		NOT NULL,
	actor_name	VARCHAR2(30)	NOT NULL,
	tvq 		INT 			NOT NULL,
	agent_num 	INT 			NOT NULL);

Describe zActor;