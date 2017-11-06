--Query5.sql
--Right Join
--Author: Daniel Gisolfi
--Oracle TV Lab 2

#Give all Producers names and the names of there agents

SELECT zProducer.prod_Name, zAgent.Agent_Name
FROM zProducer RIGHT JOIN zAgent
ON zProducer.agent_num = zAgent.agent_num
ORDER BY zProducer.prod_name;