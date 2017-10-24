--Query7.sql
--Name producers who have either won no awards or have produced a show that won no awards. 
--Author: Daniel Gisolfi
--TV Database


SELECT P.prod_name, P.prod_age
FROM zProducer AS P, zProducerBy AS PBY, zTVshow AS T, zProdAward AS PAWD, zShowAward AS SAWD
WHERE P.