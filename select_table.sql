-- QUERY
-- select * from table_name --> select all column from a table
-- select column_1,column_2 from table_name select some column from a table

USE ecommerce;
-- select all column from table buyer
select * from buyer;
-- select some column from table buyer
select id,name,email from buyer;

-- select all column from table seller
select * from seller;
-- select some column from table seller
select id,name,email from seller;

-- select all column from table product
select * from product;
-- select some column from table product
select id,name,stock,price from product;

-- select all column from table transaction
select * from transaction;

-- select all column from table catalog
select * from catalog;