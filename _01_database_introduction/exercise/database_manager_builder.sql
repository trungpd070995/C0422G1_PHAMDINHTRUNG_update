drop database if exists student_management;
create database IF NOT EXISTS student_management;
use student_management;

create table class(
`id` int auto_increment primary key,
`name_class` varchar (50)
);

INSERT INTO `class` (`name_class`) VALUES ('C0222G1');
INSERT INTO `class` (`name_class`) VALUES ('C0322G1');
INSERT INTO `class` (`name_class`) VALUES ('C0422G1');
INSERT INTO `class` (`name_class`) VALUES ('C0522G1');
INSERT INTO `class` (`name_class`) VALUES ('C0622G1');

create table teacher(
`id` int auto_increment primary key,
`name` varchar (50),
`age` date,
`country` varchar(50)
);
insert into `teacher` (`name`, `age`, `country`) values 
('Trung','1995-07-09', 'Quảng Bình'),
('Hoang','1996-08-09', 'Quảng Trị'),
('Trung','1997-06-08', 'Huế');



