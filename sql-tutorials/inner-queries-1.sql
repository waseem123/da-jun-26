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
    
SELECT s.shop_id,s.shop_name,s.shop_city
	FROM tbl_category as c
    JOIN tbl_product as p
    ON c.category_id = p.category_id
    JOIN tbl_shop as s
    ON s.shop_id = p.shop_id
    WHERE c.category_name != 'Stationary';
    
    
SELECT product_name,product_price
	FROM tbl_product WHERE product_price > (
		SELECT avg(product_price) FROM tbl_product
    );
    
SELECT product_name,product_price
	FROM tbl_product WHERE product_price > (
		SELECT avg(product_price) FROM tbl_product p
			JOIN tbl_category as c
            ON c.category_id = p.category_id
            WHERE c.category_name='Furniture'
    );
    

