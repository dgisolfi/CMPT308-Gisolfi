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

--Primary Key: actor_num
Alter Table zActor
ADD CONSTRAINT constraint_actor_num_pk PRIMARY KEY (actor_num);

--Foreign Key: agent_num references: zAgent
Alter Table zActor
ADD CONSTRAINT constraint_agent_num_fk FOREIGN KEY (agent_num) REFERENCES zAgent(agent_num);