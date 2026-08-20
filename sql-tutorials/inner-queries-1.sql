USE db_online_store;
show tables;
SELECT * FROM tbl_category;
SELECT * FROM tbl_product;
SELECT * FROM tbl_shop;

SELECT * FROM tbl_product
	WHERE category_id = (
SELECT category_id FROM tbl_product
	WHERE product_name = 'Sofa');
    
SELECT * FROM tbl_product
	WHERE category_id != (
		SELECT category_id FROM tbl_product
			WHERE product_price>45000
    );
    
SELECT * FROM tbl_product
	WHERE product_price<(
		SELECT product_price FROM tbl_product 
			WHERE product_name = 'Sofa'
    );