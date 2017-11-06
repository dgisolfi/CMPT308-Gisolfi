--Query6.sql
--Full Outer Join
--Author: Daniel Gisolfi
--Oracle TV Lab 2

#Get the Show name and Award name ordered by show name.

SELECT DISTINCT T.Show_Name, S.Award_Name
FROM zShowAward S FULL OUTER JOIN zTVShow T 
ON S.show_num = T.show_num
Order BY T.show_name;
