--Query5.sql
--TVShows pay actors. They also pay producers. Give a sorted list of TVShows, based on their total payrolls. 
--Author: Daniel Gisolfi
--TV Database

SELECT Result.TV, SUM(Salary)
FROM(SELECT T.show_name AS TV, Play.actor_salary AS Salary
	FROM  zPlay Play, zTVShow T
	WHERE Play.show_num = T.show_num

	UNION

	SELECT T.show_name AS TV, PBY.prod_salary AS Salary
	FROM  zProdBy PBY, zTVShow T 
	WHERE T.show_num = PBY.show_num) Result
Group BY Result.TV
ORDER BY SUM(Salary) DESC;