SELECT * FROM tbl_customer;
SELECT * FROM tbl_orders;
SELECT * FROM tbl_customer,tbl_orders;

SELECT * FROM 
	tbl_customer as c,
	tbl_orders as o
WHERE c.customer_id = o.customer_id
AND o.order_status='Shipped';

SELECT * FROM tbl_customer as c
JOIN tbl_orders as o
ON c.customer_id = o.customer_id;

SELECT * FROM tbl_customer as c
JOIN tbl_orders as o
ON c.customer_id = o.customer_id
WHERE o.order_status='Delivered';

SELECT o.order_id,
	c.customer_name,
	o.order_date,
	o.order_status
FROM tbl_customer as c
JOIN tbl_orders as o
ON c.customer_id = o.customer_id
Order By order_id asc;

SELECT c.customer_name,
o.order_date,
o.order_status
FROM tbl_customer as c
JOIN tbl_orders as o
ON c.customer_id = o.customer_id
WHERE o.order_date > '2026-07-25'
AND o.order_status IN('Delivered','Shipped');

SELECT c.customer_name,
	o.order_date,
    o.order_status
FROM tbl_customer as c
JOIN tbl_orders as o
ON c.customer_id = o.customer_id
WHERE c.customer_name LIKE 'J%';