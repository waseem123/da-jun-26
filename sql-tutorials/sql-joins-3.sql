use db_shop;
desc tbl_customer;

INSERT INTO tbl_customer
	(customer_name,customer_email,customer_mobile)
VALUES('Babu','babu@example.com','9022123456'),
('Siddharam','siddharam@example.com','9022123457'),
('Saviba','saviba@example.com','9022123458'),
('Swarada','swarada@example.com','9022123459'),
('Aqsa','aqsa@example.com','9022123460');
	


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

SELECT o.order_id,
	c.customer_name,
    count(od.order_id)
FROM tbl_order_details as od
JOIN tbl_orders as o
ON od.order_id = o.order_id
JOIN tbl_customer as c
ON c.customer_id = o.customer_id
GROUP BY c.customer_name,o.order_id
HAVING count(od.order_id)>1;

SELECT order_date,count(order_id)
	FROM tbl_orders
    GROUP BY order_date;
    
SELECT od.order_id,p.product_category,p.product_name
	FROM tbl_order_details as od
    JOIN tbl_product as p
    ON od.product_id = p.product_id
    WHERE p.product_category = 'Electronics';


SELECT c.customer_name,p.product_name,o.order_date,o.order_time
	FROM tbl_customer as c
    JOIN tbl_orders as o
    ON o.customer_id = c.customer_id
    JOIN tbl_order_details as od
    ON od.order_id = o.order_id
    JOIN tbl_product as p
    ON od.product_id = p.product_id
    WHERE o.order_date>='2026-07-26'
    AND o.order_time>'14:15:00'