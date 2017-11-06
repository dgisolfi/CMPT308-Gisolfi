--Query1.sql
--Natural Join
--Author: Daniel Gisolfi
--Oracle TV Lab 2

#get all the unique columns from zSponsorBy and zSponsor.

SELECT *
FROM zSponsorBy NATURAL JOIN zSponsor
ORDER BY zSponsor.sponsor_name;