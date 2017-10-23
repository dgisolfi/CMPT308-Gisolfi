--zNetwork.sql
--Create and populate zNetwork Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zNetwork(
	network_id	VARCHAR2(30)	NOT NULL,
	network_hq	VARCHAR2(30) 	NOT NULL,
	parent_num	INT				NOT NULL);

Describe  zNetwork;
