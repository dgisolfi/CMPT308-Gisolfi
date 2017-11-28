--Query8.sql
--Full outer join
--Author: Daniel Gisolfi
--DB Management Final Project

SELECT Count(Projects.prj_id)
FROM Projects
WHERE Projects.prj_id <> 1
AND Projects.emp_id <> 1
Group BY Projects.prj_name