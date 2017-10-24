--Query5.sql
--TVShows pay actors. They also pay producers. Give a sorted list of TVShows, based on their total payrolls. 
--Author: Daniel Gisolfi
--TV Database


SELECT T.show_name, SUM(Play.actor_salary, PBY.pprod_salary) AS payroll
FROM zActor As A, zPlay AS Play, zAgent AS AG, zProducer AS P, zProducerBy AS PBY
ORDER BY payroll DESC
AND A.actor_num = play.actor_num
AND A.agent_num = AG.agent_num
AND AG.agent_num = P.agent_num
AND P.prod_num = PBY.prod_num;
