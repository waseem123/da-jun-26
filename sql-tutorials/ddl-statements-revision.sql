CREATE DATABASE db_shop;

-- To open / select any database
use db_shop;

CREATE TABLE tbl_product(
	product_id int PRIMARY KEY AUTO_INCREMENT,
	product_name varchar(40) NOT NULL,
	product_price int,
	product_category varchar(30)
);

DESC tbl_product;

ALTER TABLE tbl_product
	ADD COLUMN product_brand varchar(40) after product_name;
    
ALTER TABLE tbl_product
	drop column product_brand;
    
ALTER TABLE tbl_product
	MODIFY product_price float;
    
ALTER TABLE tbl_product
	CHANGE product_category product_type varchar(40);
    
ALTER TABLE tbl_product
	add column product_category varchar(40),
    drop column product_type,
    modify product_price int;
    
DROP table tbl_product;