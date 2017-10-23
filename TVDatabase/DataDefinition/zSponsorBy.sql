--zSponsorBy.sql
--Create and populate zSponsorBy Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zSponsorBy(
	show_num		INT		NOT NULL,
	sponsor_num		INT 	NOT NULL);

Describe  zSponsorBy;

--Primary Key: show_num, sponsor_name
Alter Table zSponsorBy
ADD CONSTRAINT constraint_zSponsorBy_pk PRIMARY KEY (show_num, sponsor_num);

--Foreign Key: show_num references: zTVShow 
Alter Table zSponsorBy
ADD CONSTRAINT constraint_zSponsorBy_show_fk FOREIGN KEY (show_num) REFERENCES zTVShow(show_num);

--Foreign Key: sponsor_name references: zSponsor
Alter Table zSponsorBy
ADD CONSTRAINT constraint_zSponsorBy_spon_fk FOREIGN KEY (sponsor_num) REFERENCES zSponsor(sponsor_num);
