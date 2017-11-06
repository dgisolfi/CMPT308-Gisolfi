--Query4.sql
--Left Join
--Author: Daniel Gisolfi
--Oracle TV Lab 2

#Get all Actors that recived an award and what award they recived

SELECT DISTINCT A.Actor_Name, AA.Award_name
FROM zActor_Award AA LEFT JOIN zActor A
ON AA.actor_num = A.actor_num
ORDER BY A.actor_name;