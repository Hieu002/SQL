DROP DATABASE IF EXISTS nhanvien;
CREATE DATABASE IF NOT EXISTS nhanvien;
USE nhanvien;

-- DROP TABLE IF EXISTS Department;
CREATE TABLE Department(	
	Department_Number TINYINT AUTO_INCREMENT PRIMARY KEY,
    Department_Name VARCHAR(30) NOT NULL
    );

-- DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee(
	Employee_Number SMALLINT AUTO_INCREMENT PRIMARY KEY,
    Employee_Name VARCHAR(30) NOT NULL,
    Department_Number TINYINT NOT NULL,
    FOREIGN KEY (Department_Number) REFERENCES Department (Department_Number)
    );
    
    