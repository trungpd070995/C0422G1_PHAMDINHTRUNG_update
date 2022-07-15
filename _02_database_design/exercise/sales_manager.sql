DROP DATABASE IF EXISTS quan_ly_ban_hang;
CREATE DATABASE quan_ly_ban_hang;
USE quan_ly_ban_hang;

CREATE TABLE customer (
    c_id INT PRIMARY KEY,
    c_name VARCHAR(50),
    c_age INT
);

INSERT INTO customer VALUES(1, 'Pham Dinh Trung', 27);

CREATE TABLE `order` (
    o_id INT PRIMARY KEY,
    c_id INT,
    o_date DATE,
    o_total_price INT,
    FOREIGN KEY (c_id)
        REFERENCES customer (c_id)
);

INSERT INTO `order` VALUES(1, 1, '2022-06-12', 5000);

CREATE TABLE product (
    p_id INT PRIMARY KEY,
    p_name VARCHAR(50),
    p_price INT
);

INSERT INTO product VALUES(1, 'Laptop Lenovo', 1000);

CREATE TABLE order_detail (
    od_id INT PRIMARY KEY,
    o_id INT,
    p_id INT,
    od_qty INT,
    FOREIGN KEY (o_id)
        REFERENCES `order` (o_id),
    FOREIGN KEY (p_id)
        REFERENCES product (p_id)
);

INSERT INTO order_detail VALUES(1 ,1, 1, 5);