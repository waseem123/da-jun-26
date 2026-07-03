create database employee_management;
use employee_management;

CREATE TABLE tbl_employee(
	emp_id INT PRIMARY KEY AUTO_INCREMENT,
	emp_name varchar(30) NOT NULL,
	emp_age int,
	emp_salary int
);

CREATE TABLE tbl_dept(
	dept_id INT PRIMARY KEY AUTO_INCREMENT,
	dept_name varchar(30) NOT NULL,
	dept_building varchar(1)
);

show tables;
describe tbl_employee;
describe tbl_dept;




  