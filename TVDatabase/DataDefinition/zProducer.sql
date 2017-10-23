--zProducer.sql
--Create and populate zProducer Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zProducer(
	prod_num	INT				NOT NULL,
	prod_name	VARCHAR2(30) 	NOT NULL,
	prod_age	INT				NOT NULL,
	agent_num	INT				NOT NULL);

Describe  zProducer;

--Primary Key: prod_num
Alter Table zProducer
ADD CONSTRAINT constraint_prod_num_pk PRIMARY KEY (prod_num);

--Foreign Key: agent_num references: zAgent
Alter Table zProducer
ADD CONSTRAINT constraint_zProducer_agent_fk FOREIGN KEY (agent_num) REFERENCES zAgent(agent_num);