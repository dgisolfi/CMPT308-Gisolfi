--Relationships.sql
--Alter the tables in the database to create relationships between tables
--Author: Daniel Gisolfi
--TV Database

--Primary Keys
Alter Table zActor
ADD CONSTRAINT constraint_actor_num_pk PRIMARY KEY (actor_num);

Alter Table zActor_Award
ADD CONSTRAINT constraint_zActor_Award_pk PRIMARY KEY (actor_num, award_name, award_type, award_year);

Alter Table zAgent
ADD CONSTRAINT constraint_agent_num_pk PRIMARY KEY (agent_num);

Alter Table zAward
ADD CONSTRAINT constraint_zAward_pk PRIMARY KEY (award_name, award_type, award_year);

Alter Table zCharacter
ADD CONSTRAINT constraint_char_num_pk PRIMARY KEY (char_num);

Alter Table zDistributor
ADD CONSTRAINT constraint_dist_name_pk PRIMARY KEY (distr_name);

Alter Table zNetwork
ADD CONSTRAINT constraint_network_id_pk PRIMARY KEY (network_id);

Alter Table zParentComp
ADD CONSTRAINT constraint_parent_num_pk PRIMARY KEY (parent_num);

Alter Table zPlay
ADD CONSTRAINT constraint_zPlay_pk PRIMARY KEY (actor_num, show_num, char_num);

Alter Table zProdAward
ADD CONSTRAINT constraint_zProdAward_pk PRIMARY KEY (prod_num, award_name, award_type, award_year);

Alter Table zProdBy
ADD CONSTRAINT constraint_zProdBy_pk PRIMARY KEY (show_num, prod_num);

Alter Table zProducer
ADD CONSTRAINT constraint_prod_num_pk PRIMARY KEY (prod_num);

Alter Table zShowAward
ADD CONSTRAINT constraint_zShowAward_pk PRIMARY KEY (show_num, award_name, award_type, award_year);

Alter Table zSpinoff
ADD CONSTRAINT constraint_zSpinoff_pk PRIMARY KEY (parent_num, spinoff_num);

Alter Table zSponsor
ADD CONSTRAINT constraint_zSponsor_sponsor_pk PRIMARY KEY (sponsor_name);

Alter Table zSponsorBy
ADD CONSTRAINT constraint_zSponsorBy_pk PRIMARY KEY (show_num, sponsor_num);

Alter Table zTVShow
ADD CONSTRAINT constraint_zTVShow_pk PRIMARY KEY (show_num);


