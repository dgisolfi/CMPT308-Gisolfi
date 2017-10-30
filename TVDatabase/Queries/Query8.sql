--Query8.sql
--List awards that, according to the current data in the database, were not awarded. 
--Author: Daniel Gisolfi
--TV Database

SELECT zAward.award_name, zAward.award_type, zAward.award_year
FROM zAward
WHERE Not exists
(SELECT *
 FROM zShowAward
 WHERE zAward.award_name = zShowAward.award_name
 AND zAward.award_type = zShowAward.award_type
 AND zAward.award_year = zShowAward.award_year)

AND Not exists
(SELECT *
 FROM zActor_Award
 WHERE zAward.award_name = zActor_Award.award_name
 AND zAward.award_type = zActor_Award.award_type
 AND zAward.award_year = zActor_Award.award_year)

AND Not exists

(SELECT *
 FROM zProdaward
 WHERE zAward.award_name = zProdaward.award_name
 AND zAward.award_type = zProdaward.award_type
 AND zAward.award_year = zProdaward.award_year);