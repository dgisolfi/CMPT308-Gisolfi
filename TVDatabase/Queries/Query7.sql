--Query7.sql
--Name producers who have either won no awards or have produced a show that won no awards. 
--Author: Daniel Gisolfi
--TV Database


SELECT zProducer.prod_name,zProducer.prod_age

FROM zProducer

WHERE zProducer.prod_num NOT IN( 
	SELECT zPRODAWARD.prod_num
 	FROM zProdAward                         
)

OR zProducer.prod_num IN(
	SELECT zProdBy.prod_num
  	FROM zProdBy
  	WHERE zProdBy.show_num IN(
  		SELECT zTVShow.show_num
     	FROM zTVShow
     	WHERE zTVSHOW.show_num NOT IN(
     		SELECT zShowAward.show_num
            FROM zShowAward)));