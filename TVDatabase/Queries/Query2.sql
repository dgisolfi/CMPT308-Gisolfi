--Query2.sql
--Name characters on TV shows whose producer is in his/her 40s.
--Author: Daniel Gisolfi
--TV Database

SELECT C.char_name, T.show_name, P.prod_name, P.prod_age
FROM  zCharacter AS C, zTVShow AS T, zProducer AS P,zProducerBy AS Pby, zPlay As Play, 
WHERE P.prod_age => 40
AND P.prod_age  < 50
AND C.char_num = P.char_num
AND P.show_num = T.show_num
AND T.show_num = Pby.show_num
AND Pby.prod_num = P.prod_num ; 