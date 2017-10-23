--zNetwork.sql
--Create and populate zNetwork Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zNetwork(
	network_id	VARCHAR2(30)	NOT NULL,
	network_hq	VARCHAR2(30) 	NOT NULL,
	parent_num	INT				NOT NULL);

Describe  zNetwork;

--Primary Key: network_id 
Alter Table zNetwork
ADD CONSTRAINT constraint_network_id_pk PRIMARY KEY (network_id);

--Foreign Key:parent_num references:zParentComp

Alter Table zNetwork
ADD CONSTRAINT constraint_parent_zNetwork_fk FOREIGN KEY (parent_num) REFERENCES zParentComp(parent_num);
