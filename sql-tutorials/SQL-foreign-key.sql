use db_shop;
CREATE TABLE tbl_customer(
	customer_id int primary key auto_increment,
    customer_name varchar(30),
    customer_email varchar(30),
    customer_mobile varchar(12)
);

CREATE TABLE tbl_orders(
	order_id int primary key auto_increment,
    order_date date,
    order_time time,
    order_status varchar(30),
    customer_id int,
    foreign key(customer_id) references tbl_customer(customer_id)
);

CREATE TABLE tbl_order_details(
	detail_id int primary key auto_increment,
    product_id int,
    product_quantity int,
    product_amount int,
    order_id int,
    foreign key(product_id) references tbl_product(product_id),
    foreign key(order_id) references tbl_orders(order_id)
);


INSERT INTO tbl_product (product_name, product_price, product_category) VALUES
('Wireless Mouse', 25, 'Electronics'),
('Mechanical Keyboard', 85, 'Electronics'),
('Leather Wallet', 40, 'Accessories'),
('Running Shoes', 120, 'Footwear'),
('Stainless Water Bottle', 30, 'Home & Kitchen'),
('Bluetooth Headphones', 99, 'Electronics'),
('Denim Jacket', 75, 'Apparel'),
('Ceramic Coffee Mug', 15, 'Home & Kitchen'),
('Backpack', 55, 'Accessories'),
('Smart Watch', 199, 'Electronics');


INSERT INTO tbl_customer (customer_name, customer_email, customer_mobile) VALUES
('John Doe', 'john.doe@email.com', '9876543210'),
('Jane Smith', 'jane.smith@email.com', '9876543211'),
('Robert Johnson', 'robert.j@email.com', '9876543212'),
('Emily Davis', 'emily.d@email.com', '9876543213'),
('Michael Brown', 'michael.b@email.com', '9876543214');

INSERT INTO tbl_orders (order_date, order_time, order_status, customer_id) VALUES
('2026-07-25', '10:30:00', 'Delivered', 1),
('2026-07-26', '14:15:00', 'Shipped', 2),
('2026-07-26', '16:45:00', 'Processing', 3),
('2026-07-27', '09:00:00', 'Delivered', 1),
('2026-07-28', '11:20:00', 'Pending', 4),
('2026-07-29', '15:10:00', 'Processing', 5);

INSERT INTO tbl_order_details (product_id, product_quantity, product_amount, order_id) VALUES
(1, 2, 50, 1),   -- 2 Wireless Mice for Order 1
(3, 1, 40, 1),   -- 1 Leather Wallet for Order 1
(2, 1, 85, 2),   -- 1 Mechanical Keyboard for Order 2
(6, 1, 99, 3),   -- 1 Bluetooth Headphone for Order 3
(8, 3, 45, 3),   -- 3 Ceramic Mugs for Order 3
(4, 1, 120, 4),  -- 1 Running Shoes for Order 4
(5, 2, 60, 5),   -- 2 Water Bottles for Order 5
(9, 1, 55, 5),   -- 1 Backpack for Order 5
(10, 1, 199, 6); -- 1 Smart Watch for Order 6