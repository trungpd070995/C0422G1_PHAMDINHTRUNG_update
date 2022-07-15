DROP DATABASE IF EXISTS quan_ly_ban_hang_01;

CREATE DATABASE quan_ly_ban_hang_01;

USE quan_ly_ban_hang_01;

CREATE TABLE customer (
    c_id INT PRIMARY KEY,
    c_name VARCHAR(50),
    c_age INT
);

INSERT INTO customer (c_id , c_name , c_age) VALUES
(1, 'Minh Quan' , 10),
(2, 'Ngoc Oanh' , 20),
(3, 'Hong Ha' , 50);

CREATE TABLE `order` (
    o_id INT PRIMARY KEY,
    c_id INT,
    o_date DATE,
    o_total_price INT,
    FOREIGN KEY (c_id)
        REFERENCES customer (c_id)
);

INSERT INTO `order` (o_id , c_id , o_date , o_total_price) VALUES
(1, 1, '2006-07-21',NULL),
(2, 2, '2006-07-23',NULL),
(3, 1, '2006-07-16',NULL);

CREATE TABLE product (
    p_id INT PRIMARY KEY,
    p_name VARCHAR(50),
    p_price INT
);

INSERT INTO product (p_id , p_name , p_price) VALUES
(1, 'May Giat', 3),
(2, 'Tu Lanh', 5),
(3, 'Dieu Hoa', 7),
(4, 'Quat', 1),
(5, 'Bep Dien', 2);

CREATE TABLE order_detail (
    o_id INT,
    p_id INT,
    od_qty INT,
    PRIMARY KEY (o_id , p_id),
    FOREIGN KEY (o_id)
        REFERENCES `order` (o_id),
    FOREIGN KEY (p_id)
        REFERENCES product (p_id)
);

INSERT INTO order_detail (o_id, p_id, od_qty) VALUES
(1 ,1, 3),
(1 ,3, 7),
(1 ,4, 2),
(2 ,1, 1),
(3 ,1, 8),
(2 ,5, 4),
(2 ,3, 3);

