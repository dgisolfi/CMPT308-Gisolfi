--zPlay.sql
--Create and populate zPlay Table
--Author: Daniel Gisolfi
--TV Database

CREATE TABLE zPlay(
	actor_num		INT		NOT NULL,
	show_num		INT 	NOT NULL,
	char_num		INT		NOT NULL,
	actor_salary	INT		NOT NULL);

Describe  zPlay;

--Primary Key: actor_num show_num char_num 
Alter Table zPlay
ADD CONSTRAINT constraint_zPlay_pk PRIMARY KEY (actor_num, show_num, char_num);

--Foreign Key: actor_num references: zActor 
Alter Table zPlay
ADD CONSTRAINT constraint_zPlay_actor_num_fk FOREIGN KEY (actor_num) REFERENCES zActor(actor_num);

--Foreign Key: show_num references: zTVShow
Alter Table zPlay
ADD CONSTRAINT constraint_zPlay_show_num_fk FOREIGN KEY (show_num) REFERENCES zTVShow(show_num);

--Foreign Key: char_num references: zCharacter
Alter Table zPlay
ADD CONSTRAINT constraint_zPlay_char_num_fk FOREIGN KEY (char_num) REFERENCES zCharacter(char_num);
