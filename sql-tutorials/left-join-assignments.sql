use db_shop;

show tables;
SELECT * FROM tbl_customer;
SELECT * FROM tbl_product;
SELECT * FROM tbl_orders;
SELECT * FROM tbl_order_details;

SELECT c.customer_name,
	coalesce(p.product_name,concat(c.customer_name,'->','NA'))
FROM tbl_customer as c
LEFT JOIN tbl_orders as o
ON c.customer_id = o.customer_id
LEFT JOIN tbl_order_details as d
ON o.order_id = d.order_id
LEFT JOIN tbl_product as p
ON d.product_id = p.product_id;

SELECT COALESCE(null,null,null,null,null,'Siddharam',null,'Waseem');

SELECT c.customer_name,
	coalesce(p.product_name,concat(c.customer_name,'->','NA')),
    coalesce(d.product_quantity,0)
FROM tbl_customer as c
LEFT JOIN tbl_orders as o
ON c.customer_id = o.customer_id
LEFT JOIN tbl_order_details as d
ON o.order_id = d.order_id
LEFT JOIN tbl_product as p
ON d.product_id = p.product_id;

SELECT c.customer_name,
	coalesce(count(d.product_quantity),0)
FROM tbl_customer as c
LEFT JOIN tbl_orders as o
ON c.customer_id = o.customer_id
LEFT JOIN tbl_order_details as d
ON o.order_id = d.order_id
LEFT JOIN tbl_product as p
ON d.product_id = p.product_id
GROUP BY c.customer_name;


SELECT c.customer_name,
	coalesce(p.product_name,'NA'),
	coalesce(sum(d.product_quantity),0)
FROM tbl_customer as c

  
LEFT JOIN tbl_orders as o
ON c.customer_id = o.customer_id
LEFT JOIN tbl_order_details as d
ON o.order_id = d.order_id
LEFT JOIN tbl_product as p
ON d.product_id = p.product_id
GROUP BY c.customer_name,p.product_name;