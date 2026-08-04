use db_shop;
SELECT * FROM tbl_product;
SELECT * FROM tbl_customer;
SELECT * FROM tbl_order_details;
SELECT * FROM tbl_orders;

SELECT 
	c.customer_name,
    o.order_date,
    o.order_status
FROM tbl_customer as c
JOIN tbl_orders as o
ON c.customer_id = o.customer_id
WHERE o.order_date > '2026-07-26';

SELECT count(customer_id)
	FROM tbl_orders as o
WHERE order_date>'2026-07-26';

SELECT sum(od.product_quantity)
FROM tbl_order_details as od
JOIN tbl_orders as o
ON o.order_id = od.order_id
WHERE o.order_date = '2026-07-25';


SELECT count(od.product_id) 
FROM tbl_order_details as od
JOIN tbl_product as p
ON od.product_Id = p.product_id
WHERE p.product_name = 'Leather Wallet';



