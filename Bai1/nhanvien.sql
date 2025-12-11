drop database if exists nhanvien;
create database if not exists nhanvien;
use nhanvien;

create table department(
	department_number tinyint primary key,
    department_name varchar(50)
    );

create table employee_table(
	employee_number tinyint auto_increment primary key,
    employee_name varchar(50)
    );