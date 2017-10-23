--zAgent.sql
--Create and populate zAgent Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zAgent(
	agent_num	INT				NOT NULL,
	agent_name	VARCHAR2(30) 	NOT NULL,
	agent_home	CHAR(2)			NOT NULL);

Describe zAgent;




