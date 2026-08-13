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
order by p.product_id
;

UPDATE tbl_product SET product_price = 13000
	WHERE product_id = 11;
