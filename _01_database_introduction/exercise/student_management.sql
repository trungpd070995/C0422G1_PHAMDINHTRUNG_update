DROP DATABASE IF EXISTS student_management;
CREATE DATABASE IF NOT EXISTS student_management;
USE student_management;

CREATE TABLE class (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name_class VARCHAR(50)
);

INSERT INTO class (name_class) VALUES 
('C0222G1'),
('C0322G1'),
('C0422G1'),
('C0522G1'),
('C0622G1');

CREATE TABLE teacher (
    id INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50),
    age DATE,
    country VARCHAR(50)
);

INSERT INTO teacher (`name`, age, country) VALUES 
('Trung','1995-07-09', 'Quảng Bình'),
('HOang','1996-08-09', 'Quảng Trị'),
('TrUNg','1997-06-08', 'Huế');



