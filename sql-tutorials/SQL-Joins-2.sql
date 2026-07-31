USE db_shop;

SELECT o.order_id,
		p.product_name,
        od.product_quantity
FROM tbl_orders as o
JOIN tbl_order_details as od
ON o.order_id = od.order_id
JOIN tbl_product as p
ON od.product_id = p.product_id
ORDER BY o.order_id asc;

SELECT o.order_id,
		p.product_name,
        p.product_category,
        od.product_quantity
FROM tbl_orders as o
JOIN tbl_order_details as od
ON o.order_id = od.order_id
JOIN tbl_product as p
ON od.product_id = p.product_id
WHERE product_category = 'Electronics'
ORDER BY o.order_id asc;

-- CUSTOMER NAME, PRODUCT NAME, ORDER DATE

SELECT customer_name,
	product_name,
	order_date
FROM tbl_orders as o
JOIN tbl_customer as c
ON o.customer_id = c.customer_id
JOIN tbl_order_details as od
ON o.order_id = od.order_id
JOIN tbl_product as p
ON p.product_id = od.product_id;