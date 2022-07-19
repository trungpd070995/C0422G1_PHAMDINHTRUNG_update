DROP DATABASE IF EXISTS quan_ly_ban_hang_01;

CREATE DATABASE quan_ly_ban_hang_01;

USE quan_ly_ban_hang_01;

CREATE TABLE customer (
    c_id INT PRIMARY KEY,
    c_name VARCHAR(50),
    c_age INT
);

CREATE TABLE `order` (
    o_id INT PRIMARY KEY,
    c_id INT,
    o_date DATE,
    o_total_price INT,
    FOREIGN KEY (c_id)
        REFERENCES customer (c_id)
);

CREATE TABLE product (
    p_id INT PRIMARY KEY,
    p_name VARCHAR(50),
    p_price INT
);

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
INSERT INTO customer (c_id , c_name , c_age) VALUES
(1, 'Minh Quan' , 10),
(2, 'Ngoc Oanh' , 20),
(3, 'Hong Ha' , 50);

INSERT INTO `order` (o_id , c_id , o_date , o_total_price) VALUES
(1, 1, '2006-07-21',NULL),
(2, 2, '2006-07-23',NULL),
(3, 1, '2006-07-16',NULL);

INSERT INTO product (p_id , p_name , p_price) VALUES
(1, 'May Giat', 3),
(2, 'Tu Lanh', 5),
(3, 'Dieu Hoa', 7),
(4, 'Quat', 1),
(5, 'Bep Dien', 2);

INSERT INTO order_detail (o_id, p_id, od_qty) VALUES
(1 ,1, 3),
(1 ,3, 7),
(1 ,4, 2),
(2 ,1, 1),
(3 ,1, 8),
(2 ,5, 4),
(2 ,3, 3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT 
    o_id, o_date, o_total_price
FROM
    `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT 
    customer.c_name, product.p_name
FROM
    customer
        INNER JOIN
    `order` ON customer.c_id = `order`.c_id
        INNER JOIN
    order_detail ON `order`.o_id = order_detail.o_id
        INNER JOIN
    product ON order_detail.p_id = product.p_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT 
    customer.*, COUNT(`order`.c_id) AS san_pham
FROM
    customer
        LEFT JOIN
    `order` ON customer.c_id = `order`.c_id
GROUP BY c_id
HAVING COUNT(`order`.c_id) = 0;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
SELECT 
    `order`.o_id,
    `order`.o_date,
    SUM(order_detail.od_qty * product.p_price)
FROM
    `order`
        JOIN
    order_detail ON `order`.o_id = order_detail.o_id
        JOIN
    product ON order_detail.p_id = product.p_id
GROUP BY o_id;


