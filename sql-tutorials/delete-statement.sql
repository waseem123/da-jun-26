use employee_management;

show tables;


CREATE TABLE tbl_employee(
	emp_id INT PRIMARY KEY AUTO_INCREMENT,
	emp_name varchar(30) NOT NULL,
	emp_age int,
	emp_salary int
);

ALTER TABLE tbl_employee
	ADD COLUMN emp_salary int,
    ADD COLUMN emp_gender varchar(6),
    ADD COLUMN emp_dept varchar(30);

-- CREATE TABLE tbl_temp

SELECT * FROM tbl_employee;

    
INSERT INTO tbl_employee(emp_name,emp_salary,emp_gender,emp_dept)
VALUES('Alex',80000,'Male','Production');

INSERT INTO tbl_employee 
	(emp_name,emp_gender,emp_salary) 
		VALUES ('Onkar','Male',93000);
        
TRUNCATE tbl_employee;
DELETE FROM tbl_employee WHERE emp_id = 12;
commit;
rollback;

Truncate tbl_employee;

DROP table tbl_employee;

DELETE FROM tbl_employee WHERE emp_salary<95000;
rollback;