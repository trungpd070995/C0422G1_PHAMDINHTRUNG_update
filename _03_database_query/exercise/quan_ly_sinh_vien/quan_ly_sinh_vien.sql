DROP DATABASE IF EXISTS quan_ly_sinh_vien_01;

CREATE DATABASE quan_ly_sinh_vien_01;

USE quan_ly_sinh_vien_01;

CREATE TABLE class (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(60),
    start_day DATETIME,
    `status` BIT
);

CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(30),
    address VARCHAR(50),
    phone VARCHAR(20),
    `status` BIT,
    class_id INT,
    FOREIGN KEY (class_id)
        REFERENCES class (class_id)
);

CREATE TABLE `subject` (
    sub_id INT AUTO_INCREMENT PRIMARY KEY,
    sub_name VARCHAR(30),
    credit TINYINT DEFAULT 1 CHECK (credit >= 1),
    `status` BIT DEFAULT 1
);

CREATE TABLE mark (
    mark_id INT AUTO_INCREMENT PRIMARY KEY,
    sub_id INT,
    student_id INT,
    mark FLOAT DEFAULT 0 CHECK (mark BETWEEN 0 AND 100),
    exam_times TINYINT DEFAULT 1,
    UNIQUE (sub_id , student_id),
    FOREIGN KEY (sub_id)
        REFERENCES subject (sub_id),
    FOREIGN KEY (student_id)
        REFERENCES student (student_id)
);

INSERT INTO class (class_id,class_name,start_day,`status`) VALUES 
(1, 'A1', '2008-12-20', 1),
(2, 'A2', '2008-12-22', 1),
(3, 'B3', CURRENT_DATE, 0);

INSERT INTO student (student_name, address, phone, `status`, class_id) 
VALUES 
('Hung', 'Ha Noi', '0912113113', 1, 1),
('Hoa', 'Hai phong', NULL, 1, 1),
('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO `subject` 
VALUES 
(1, 'CF', 5, 1),
(2, 'C', 6, 1),
(3, 'HDJ', 5, 1),
(4, 'RDBMS', 10, 1);
       
INSERT INTO mark (sub_id, student_id, Mark, exam_times)
VALUES 
(1, 1, 8, 1),
(1, 2, 10, 2),
(2, 1, 12, 1);

-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
SELECT 
    *
FROM
    student
WHERE
    student_name LIKE 'H%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
SELECT 
    *
FROM
    class
WHERE
    MONTH(start_day) = 12;

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5
SELECT 
    *
FROM
    `subject`
WHERE
    credit BETWEEN 3 AND 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
SET SQL_SAFE_UPDATES = 0;
UPDATE student 
SET 
    class_id = 2
WHERE
    `student_name` = 'Hung';

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
SELECT 
    student.student_name, `subject`.sub_name, mark
FROM
    mark
        INNER JOIN
    student ON mark.student_id = student.student_id
        INNER JOIN
    `subject` ON mark.sub_id = `subject`.sub_id
ORDER BY mark DESC , student.student_name;
       