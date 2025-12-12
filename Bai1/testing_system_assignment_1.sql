drop database if exists testing_system_assignment_1;
create database if not exists testing_system_assignment_1;
use testing_system_assignment_1;

create table department (
	department_id int auto_increment primary key,
    department_name varchar(100) not null
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
    create_date date,
    foreign key (department_id) references department (department_id),
    foreign key (position_id) references position (position_id)
	);
    
create table GroupTable (
	group_id int auto_increment primary key,
    group_name varchar(50),
    creator_id int,
    create_date date,
    foreign key (creator_id) references account (account_id)
    );

create table group_account (
	group_id int,
    account_id int,
    join_date date,
    primary key (group_id,account_id),
    foreign key (group_id) references GroupTable (group_id),
    foreign key (account_id) references account (account_id)
    );

create table type_question (	
	type_id int auto_increment primary key,
	type_name varchar(50)
    );	

create table category_question (
	category_id int auto_increment primary key,
    category_name varchar(50)
    );
    
create table question (
	question_id int auto_increment primary key,
    content text,
    category_id int,
    type_id int,
    creator_id int,
    create_date date,
    foreign key (category_id) references category_question(category_id),
    foreign key (type_id) references type_question (type_id),
    foreign key (creator_id) references GroupTable (creator_id)
    );

create table answer (
	answer_id int auto_increment primary key,
    content text,
    question_id int,
    isCorrect boolean,
    foreign key (question_id) references question (question_id)
    );

create table exam (
	exam_id int auto_increment primary key,
    code varchar(50),
    title varchar(100),
    category_id int,
    duration int,
    creator_id int,
    create_date date,
    foreign key (category_id) references category_question (category_id),
    foreign key (creator_id) references GroupTable (creator_id)
    );

create table exam_question (
	exam_id int,
    question_id int,
    primary key (exam_id, question_id),
    foreign key (exam_id) references exam (exam_id),
    foreign key (question_id) references question (question_id)
    );