--zCharacter.sql
--Create and populate zCharacter Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zCharacter(
	char_num	INT				NOT NULL,
	char_name	VARCHAR2(30) 	NOT NULL,
	char_age	INT				NOT NULL);

Describe zCharacter;
