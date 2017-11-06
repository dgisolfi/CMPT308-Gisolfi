--Query3.sql
--Join ON
--Author: Daniel Gisolfi
--Oracle TV Lab 2

# Give all the  Distributor names and Parent names

SELECT D.Distr_Name, P.ParenT_Name
FROM zDistributor D JOIN zParentComp P
ON D.parent_num = P.parent_num;