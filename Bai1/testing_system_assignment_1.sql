drop database if exists testing_system_assignment_1;
create database if not exists testing_system_assignment_1;
use testing_system_assignment_1;

create table department (
	department_id int auto_increment primary key,
    department_name varchar(100)
    );

create table position  (
	position_id int auto_increment primary key,
    position_name enum('Dev', 'Test', 'Scrum Master', 'PM')
    );

create table account (
	account_id int auto_increment primary key,
    username varchar(50),
    department_id int,
    position_id int,
    create_date DATE
	);