--Query4.sql
--Sometimes, an actor plays more than one character on a TV show. List these actors and the characters they played. 
--Author: Daniel Gisolfi
--TV Database

SELECT C.char_name, A.actor_name 
FROM zCharacter AS C, zPlay AS Play, zActor AS A
WHERE Count(actor_num) > 1
AND C.char_num = Play.char_num
AND Play.actor_num = A.actor_num 