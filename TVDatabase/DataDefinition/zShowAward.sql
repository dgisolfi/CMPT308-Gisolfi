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
