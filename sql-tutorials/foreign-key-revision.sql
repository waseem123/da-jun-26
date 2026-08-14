CREATE DATABASE db_online_store;
use db_online_store;

CREATE TABLE tbl_product(
	product_id int primary key auto_increment,
    product_name varchar(30) not null,
    product_price int
);

CREATE TABLE tbl_category(
	category_id int primary key auto_increment,
    category_name varchar(30) not null
);

ALTER TABLE tbl_product 
	add
    foreign key (category_id) 
references tbl_category(category_id);

INSERT INTO tbl_category(category_id,category_name)
	VALUES(101,'Electronics'),
    (102,'Stationary'),
    (103,'Furniture');

TRUNCATE tbl_product;
INSERT INTO tbl_product (product_name,category_id)
    VALUES
    ('TV',101),
    ('Sofa',103),
    ('Pen',102),
    ('Pencil',102),
    ('Scale',102),
    ('Mobile',101),
    ('Wardrobe',103),
    ('Charger',101),
    ('Chair',103),
    ('AC',101);
    
INSERT INTO tbl_product (product_name,category_id)
    VALUES
    ('LED Monitor',101);
    
SELECT * FROM tbl_product;

SELECT * FROM tbl_product as p
JOIN tbl_category as c
ON p.category_id = c.category_id
WHERE p.category_id = 101
order by p.product_id;

UPDATE tbl_product SET product_price = 13000
	WHERE product_id = 11;

SELECT p.product_id,
	p.product_name,
    c.category_name
FROM tbl_product as p
JOIN tbl_category as c
ON p.category_id = c.category_id
order by p.product_name;

SELECT p.product_id,
	p.product_name,
    p.product_price,
    c.category_name
FROM tbl_product as p€
JOIN tbl_category as c
ON p.category_id = c.category_id
order by c.category_name,p.product_price;

SELECT p.product_id,
	p.product_name,
    p.product_price,
    c.category_name
FROM tbl_product as p
JOIN tbl_category as c
ON p.category_id = c.category_id
WHERE c.category_name IN ('Furniture','Stationary');
-- WHERE c.category_name='Furniture'
-- OR c.category_name='Stationary';


--  Multi-table join

Create table tbl_shop(
	shop_id int primary key auto_increment,
	shop_name varchar(30),
	shop_city varchar(30)
);

Insert into tbl_shop(shop_name,shop_city)
	VALUES('ABC Electronics','Solapur'),
    ('PQR Furnitures','Solapur'),
    ('LMN Electronics','Solapur'),
    ('XYZ Stationaries','Solapur');
    
    
ALTER TABLE tbl_product
	ADD COLUMN shop_id int,
	ADD FOREIGN KEY (shop_id) references tbl_shop(shop_id);
    
SELECT * FROM tbl_product;
UPDATE tbl_product set shop_id = 4
WHERE shop_id IS NULL;