--Query2.sql
--Name characters on TV shows whose producer is in his/her 40s.
--Author: Daniel Gisolfi
--TV Database

SELECT DISTINCT zCharacter.char_name,zTVShow.show_name,zProducer.prod_name,zProducer.prod_age
FROM zCharacter,zTVShow,zProducer,zPlay,zProdBy
WHERE zProducer.prod_age BETWEEN 40 AND 49
AND zCharacter.char_num = zPlay.char_num
AND zPlay.show_num = zTVShow.show_num
AND zProducer.prod_num = zProdBy.prod_num
AND zTVShow.show_num = zProdBy.show_num;