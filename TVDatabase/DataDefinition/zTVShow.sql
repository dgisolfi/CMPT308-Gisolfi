--zTVShow.sql
--Create and populate zTVShow Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zTVShow(
	show_num 	INT				NOT NULL,
	show_name 	VARCHAR2(30)	NOT NULL,
	start_month INT				NOT NULL,
	start_year 	INT				NOT NULL,
	end_month 	INT				NOT NULL,
	end_year 	INT				NOT NULL,
	network_id 	VARCHAR2(30)	NOT NULL,
	distr_name 	VARCHAR2(30)	NOT NULL);

Describe  zTVShow;
