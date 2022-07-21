DROP DATABASE IF EXISTS internship;
CREATE DATABASE internship;

USE internship;

-- KHOA
CREATE TABLE faculty (
    faculty_id CHAR(10) PRIMARY KEY, 
    faculty_name CHAR(30),
    phone CHAR(10)
);

-- GIANG VIEN
CREATE TABLE instructor (
    instructor_id INT PRIMARY KEY,
    instructor_name CHAR(30),
    salary DECIMAL(5, 2),
    faculty_id CHAR(10),
    FOREIGN KEY (faculty_id) REFERENCES faculty (faculty_id)
);

-- SINH VIEN
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name CHAR(40),
    faculty_id CHAR(10),
    date_of_birth INT,
    place_of_birth CHAR(30),
    FOREIGN KEY (faculty_id) REFERENCES faculty (faculty_id)
);

-- DE TAI
CREATE TABLE project (
    project_id CHAR(10) PRIMARY KEY,
    project_name CHAR(30),
    expense INT,
    place_of_intern CHAR(30)
);

-- HUONG DAN THUC TAP
CREATE TABLE instructor_student (
    student_id INT PRIMARY KEY,
    project_id CHAR(10),
    instructor_id INT,
    grade DECIMAL(5, 2),
    FOREIGN KEY (student_id) REFERENCES student (student_id),
    FOREIGN KEY (project_id) REFERENCES project (project_id),
    FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id)
);

INSERT INTO faculty VALUES
('Geo', 'Dia ly va QLTN', 3855413), 
('Math', 'Toan', 3855411), 
('Bio', 'Cong nghe Sinh hoc', 3855412);

INSERT INTO instructor VALUES
(11, 'Thanh Binh', 700, 'Geo'),     
(12, 'Thu Huong', 500, 'Math'), 
(13, 'Chu Vinh', 650, 'Geo'), 
(14, 'Le Thi Ly', 500, 'Bio'), 
(15, 'Tran Son', 900, 'Math');

INSERT INTO student VALUES
(1, 'Le Van Son', 'Bio', 1990, 'Nghe An'), 
(2, 'Nguyen Thi Mai', 'Geo', 1990, 'Thanh Hoa'), 
(3, 'Bui Xuan Duc', 'Math', 1992, 'Ha Noi'), 
(4, 'Nguyen Van Tung', 'Bio', null, 'Ha Tinh'), 
(5, 'Le Khanh Linh', 'Bio', 1989, 'Ha Nam'), 
(6, 'Tran Khac Trong', 'Geo', 1991, 'Thanh Hoa'), 
(7, 'Le Thi Van', 'Math', null, 'null'), 
(8, 'Hoang Van Duc', 'Bio', 1992, 'Nghe An');

INSERT INTO project VALUES
('PRJ01', 'GIS', 100, 'Nghe An'), 
('PRJ02', 'ARC GIS', 500, 'Nam Dinh'), 
('PRJ03', 'Spatial DB', 100,  'Ha Tinh'), 
('PRJ04', 'MAP', 300, 'Quang Binh' );

INSERT INTO instructor_student VALUES
(1, 'PRJ01', 13, 8), 
(2, 'PRJ03', 14, 0), 
(3, 'PRJ03', 12, 10), 
(5, 'PRJ04', 14, 7), 
(6, 'PRJ01', 13, null), 
(7, 'PRJ04', 11, 10), 
(8, 'PRJ03', 15, 6);

-- Bài tập. Chỉ sử dụng 01 lệnh SQL trả lời các yêu cầu sau:
-- Phần 1.
-- 1.	Đưa ra thông tin gồm mã số, họ tên và tên khoa của tất cả các giảng viên
SELECT 
    instructor_id, instructor_name, faculty_name
FROM
    instructor
        JOIN
    faculty ON faculty.faculty_id = instructor.faculty_id;

-- 2.	Đưa ra thông tin gồm mã số, họ tên và tên khoa của các giảng viên của khoa ‘DIA LY va QLTN’
SELECT 
    instructor_id, instructor_name, faculty_name
FROM
    instructor
        JOIN
    faculty ON faculty.faculty_id = instructor.faculty_id
WHERE
    faculty_name = 'DIA LY va QLTN';

-- 3.	Cho biết số sinh viên của khoa ‘CONG NGHE SINH HOC’
SELECT 
    COUNT(*) AS so_luong_sv_khoa_cnsh
FROM
    student
    join faculty on student.faculty_id = faculty.faculty_id
    where faculty.faculty_id = "Bio"
    group by faculty.faculty_id ;

-- 4.	Đưa ra danh sách gồm mã số, họ tên và tuổi của các sinh viên khoa ‘TOAN’
SELECT 
    student_id, student_name, date_of_birth
FROM
    student
    join faculty on faculty.faculty_id = student.faculty_id
    where faculty_name = "TOAN";

-- 5.	Cho biết số giảng viên của khoa ‘CONG NGHE SINH HOC’
SELECT 
    COUNT(*) AS so_luong_gv_khoa_cong_nghe_sinh_hoc
FROM
    instructor
        JOIN
    faculty ON instructor.faculty_id = faculty.faculty_id
WHERE
    faculty.faculty_id = 'Bio'
GROUP BY faculty.faculty_id;

-- 6.	Cho biết thông tin về sinh viên không tham gia thực tập
SELECT 
    student.*
FROM
    student
WHERE
    student.student_id NOT IN (SELECT 
            student_id
        FROM
            instructor_student);
            
-- C2: left join instructor_student on student.student_id = instructor_student.student_id
-- where instructor_student.student_id is null;

-- 7.	Đưa ra mã khoa, tên khoa và số giảng viên của mỗi khoa
SELECT 
    faculty.faculty_id,
    faculty_name,
    SUM(instructor.instructor_id) AS so_giang_vien
FROM
    faculty
        JOIN
    instructor ON faculty.faculty_id = instructor.faculty_id
GROUP BY instructor.instructor_id;

-- 8.	Cho biết số điện thoại của khoa mà sinh viên có tên ‘Le van son’ đang theo học
SELECT 
    phone as so_phone_khoa
FROM
    faculty
    join student on faculty.faculty_id = student.faculty_id
    where student_name = "Le van son";

