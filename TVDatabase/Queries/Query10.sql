--Query10.sql
--Name shows that are somehow associated with parent company ____.
--Author: Daniel Gisolfi
--TV Database

SELECT T.show_name, N.network_id
FROM zNetwork N, zTVShow T, zDistributor D, zParentComp P
WHERE P.parent_name = '&PleaseEnterParentName'
AND N.network_id = T.network_id
AND T.distr_name = D.distr_name
AND D.parent_num = P.parent_num;
