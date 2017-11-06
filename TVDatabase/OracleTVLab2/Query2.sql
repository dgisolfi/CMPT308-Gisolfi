--Query2.sql
--Join Using
--Author: Daniel Gisolfi
--Oracle TV Lab 2

#Get all show numbers and the producers that produce them

SELECT zProdBy.show_num AS ShowNumber, zProducer.prod_name AS ProducerName
FROM zProducer join zProdBy using (prod_num);