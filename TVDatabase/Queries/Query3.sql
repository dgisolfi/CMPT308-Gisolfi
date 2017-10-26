--Query3.sql
--Name agents who represent a producer of a show on one of the Big Three Networks(ABC, CBS, or NBC)
--Author: Daniel Gisolfi
--TV Database

SELECT DISTINCT A.agent_name, P.prod_name
FROM zAgent A, zProducer P, zProdBy Pby, zTVShow T, zNetwork N
WHERE N.network_id = 'ABC'  OR N.network_id = 'CBS' OR N.network_id = 'NBC' 
AND A.agent_num = P.agent_num
AND P.prod_num = Pby.prod_num
AND Pby.show_num = T.show_num
AND T.network_id = N.network_id;
