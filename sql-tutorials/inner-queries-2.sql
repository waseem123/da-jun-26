USE db_shop;

SHOW TABLES;
SELECT * FROM tbl_customer;
SELECT * FROM tbl_product;
SELECT * FROM tbl_orders;
SELECT * FROM tbl_order_details;

SELECT min(order_id) FROM tbl_order_details
GROUP BY order_id
HAVING COUNT(order_id) > 1;

SELECT * FROM tbl_orders
	WHERE order_id NOT IN(
		SELECT min(order_id) FROM tbl_order_details
			GROUP BY order_id
			HAVING COUNT(order_id) > 1
    );

SELECT order_id,sum(product_amount)
	FROM tbl_order_details
    GROUP BY order_id
    HAVING sum(product_amount)>150;

SELECT product_category,product_quantity
FROM(
	SELECT p.product_category as product_category,
		sum(od.product_quantity) as product_quantity
		FROM tbl_product as p
		JOIN tbl_order_details as od
		ON p.product_id = od.product_id
		GROUP BY p.product_category
    ) as t
    limit 1;
    
    
SELECT c.customer_id,c.customer_name,COALESCE(o.order_status,'NA')
	FROM tbl_customer as c
    LEFT JOIN tbl_orders as o
    ON c.customer_id = o.customer_id
    WHERE c.customer_id not in(
		SELECT customer_id from tbl_orders
			WHERE order_status='Delivered'
);

SELECT c.customer_name,p.product_name,p.product_price
	FROM tbl_orders as o
    JOIN tbl_customer as c
    ON o.customer_id = c.customer_id
    JOIN tbl_order_details as od
    ON o.order_id = od.order_id
    JOIN tbl_product as p
    on od.product_id = p.product_id
    WHERE p.product_price>25;

SELECT product_category from tbl_product WHERE product_id IN(
SELECT product_id from tbl_order_details WHERE
	product_quantity = (
		SELECT min(product_quantity) FROM tbl_order_details)
);

SELECT p.product_category,sum(od.product_quantity) as qty
from tbl_order_details as od
JOIN tbl_product as p
ON od.product_id = p.product_id
GROUP BY p.product_category
ORDER by qty
LIMIT 1;
	
