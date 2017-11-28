--Query8.sql
--Full outer join
--Author: Daniel Gisolfi
--DB Management Final Project

SELECT SUM(AMENDS.salary)
FROM AMENDS
WHERE AMENDS.job_id <> 17
Or AMENDS.job_id <> 7
Order BY AMENDS.salary DESC