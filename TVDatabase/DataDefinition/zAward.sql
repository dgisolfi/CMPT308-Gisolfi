--zAward.sql
--Create and populate zAward Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zAward(
	award_name	VARCHAR2(30)	NOT NULL,
	award_type	VARCHAR2(30) 	NOT NULL,
	award_year	INT				NOT NULL);

Describe zAward;
