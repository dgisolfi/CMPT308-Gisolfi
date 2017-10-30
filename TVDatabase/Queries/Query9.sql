--Query9.sql
--Name award-winning shows that have featured award-winning actor(s) and were produced by award-winning producer(s).
--Author: Daniel Gisolfi
--TV Database

SELECT T.show_name, N.network_id
FROM zNetwork N, zProdAward P, zShowAward S, zAward A, zActorAward AA, zTVShow T
WHERE A.award_name = AA.award_name
AND A.award_name = P.award_name 
AND T.show_num = S.show_num
AND T.network_id = N.network_id

--AWARD WINNING SHOWS 7
SELECT T.show_name, N.network_id
FROM zNetwork N, zTVShow T, zShowAward S
WHERE T.show_num = S.show_num
AND T.network_id = N.network_id

UNION

SELECT T.show_name, N.network_id
FROM zTVShow T, zAward A, zActor_Award AA, zPlay P, zActor Act
WHERE T.show_num = P.show_num
AND P.actor_num = Act.actor_num
AND Act.actor_num = AA.actor_num
AND AA.award_name = A.award_name
GROUP BY T.show_name;