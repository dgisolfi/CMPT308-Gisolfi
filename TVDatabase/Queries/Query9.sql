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
