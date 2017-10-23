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

--Primary Key: show_num
Alter Table zTVShow
ADD CONSTRAINT constraint_zTVShow_pk PRIMARY KEY (show_num);

--Foreign Key: network_id references: zNetwork 
Alter Table zTVShow
ADD CONSTRAINT constraint_zTVShow_network_pk FOREIGN KEY (network_id) REFERENCES zNetwork(network_id)

--Foreign Key: distr_name references: zDistributor
Alter Table zTVShow
ADD CONSTRAINT constraint_zTVShow_distr_pk FOREIGN KEY (distr_name) REFERENCES zDistributor(distr_name)
