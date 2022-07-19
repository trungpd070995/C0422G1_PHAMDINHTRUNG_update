DROP DATABASE IF EXISTS demo;
CREATE DATABASE demo;
USE demo;

-- Bước 2: Tạo bảng Products với các trường dữ liệu sau:

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_code VARCHAR(20),
    product_name VARCHAR(50),
    product_price DOUBLE,
    product_amount INT,
    product_description VARCHAR(100),
    product_status VARCHAR(100)
);

-- Chèn một số dữ liệu mẫu cho bảng Products.

INSERT INTO products ( product_code, product_name, product_price, product_amount, product_description, product_status )
VALUES ('132132', 'Apple', 1000, 20, 'Iphone11-promax', 'Còn hàng trong kho'),
		('123132', 'Samsung', 2000, 30, 'Galaxy', 'Còn hàng trong kho'),
		('124134', 'Xiaomi', 3000, 40, 'Red-mi', 'Tạm hết hàng'),
		('125135', 'Oppo', 4000, 50, 'Reno', 'Còn hàng trong kho'),
		('126136', 'Vivo', 5000, 40, 'V20', 'Tạm hết hàng');

-- Bước 3:Bước 3:
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)

CREATE INDEX index_1 ON products(product_code);
SELECT 
    *
FROM
    products
WHERE
    product_code = '123132';
EXPLAIN SELECT * FROM products WHERE product_code = "123132";

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)

CREATE INDEX index_2 ON products(product_name, product_price);
SELECT 
    *
FROM
    products
WHERE
    product_name = 'Apple';

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào

EXPLAIN SELECT * FROM products WHERE product_name = "Apple";

-- So sánh câu truy vấn trước và sau khi tạo index

-- Bước 4: 
-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.

CREATE VIEW view_1 AS
    SELECT 
        product_code, product_name, product_price, product_status
    FROM
        products;
SELECT 
    *
FROM
    view_1;

-- Tiến hành sửa đổi view

SET SQL_SAFE_UPDATES = 0;
UPDATE view_1 
SET product_name = "Nokia", product_price = 1500, product_status = "Hết hàng"
WHERE product_code = 132132;
SET SQL_SAFE_UPDATES = 1;

-- Tiến hành xoá view

DROP VIEW view_1;

-- Bước 5:  
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product

delimiter //
CREATE PROCEDURE all_products()
BEGIN
	SELECT * FROM products;
END //
delimiter ;

CALL all_products();

-- Tạo store procedure thêm một sản phẩm mới

delimiter //
CREATE PROCEDURE sp_insert_new_product(
	IN p_product_code VARCHAR(10),
	IN p_product_name VARCHAR(45), 
	IN p_product_price DOUBLE, 
	IN p_product_amount INT, 
	IN p_product_description VARCHAR(90), 
	IN p_product_status VARCHAR(45))
BEGIN
	INSERT INTO products(product_code, product_name, product_price, product_description, product_status)
    VALUES (p_product_code, p_product_name, p_product_price, p_product_description, p_product_status);
END //
delimiter ;
CALL sp_insert_new_product('111456','B-phone', 6000, 25, '3Q', 'Hàng mới nhập về');

-- Tạo store procedure sửa thông tin sản phẩm theo id

delimiter //
CREATE PROCEDURE sp_edit_new_product(IN p_id INT, IN p_price DOUBLE)
BEGIN
	UPDATE products SET product_price = p_price WHERE id = p_id;
END //
delimiter ;

CALL sp_edit_new_product(1,15003);

-- Tạo store procedure xoá sản phẩm theo id

delimiter //
CREATE PROCEDURE sp_delete_product_by_id(IN p_id_delete INT)
BEGIN
	DELETE FROM products p WHERE p.id = p_id_delete;
END //
delimiter ;

CALL sp_delete_product_by_id(4);




