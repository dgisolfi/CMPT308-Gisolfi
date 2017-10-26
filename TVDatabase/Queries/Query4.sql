--Query4.sql
--Sometimes, an actor plays more than one character on a TV show. List these actors and the characters they played. 
--Author: Daniel Gisolfi
--TV Database

SELECT zCharacter.char_name, zActor.actor_name
FROM zCharacter,zActor,zPlay
WHERE zCharacter.char_num = zPlay.char_num
AND zPlay.actor_num = zActor.actor_num 
AND zPlay.actor_num IN
       (SELECT zPlay.actor_num
        FROM zPlay
        GROUP BY (zPlay.actor_num, zPlay.show_num) 
        HAVING COUNT(*)> 1);