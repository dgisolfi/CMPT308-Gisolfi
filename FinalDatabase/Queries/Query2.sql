--Query2.sql
--Get All 
--Author: Daniel Gisolfi
--DB Management Final Project

SELECT DISTINCT Staff_lname
FROM Staff
WHERE NOT EXISTS
	(SELECT *
	FROM 	Devices
	WHERE	dev_type = 'Laptop')