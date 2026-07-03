DESC tbl_employee;
DESC tbl_dept;

ALTER TABLE tbl_employee
	MODIFY emp_gender varchar(6);
    
ALTER TABLE tbl_employee
	CHANGE emp_fullname emp_fullname varchar(30) not null;
    
ALTER TABLE tbl_dept
	ADD COLUMN dept_hod varchar(30),
    MODIFY COLUMN dept_building varchar(2),
    DROP COLUMN dept_floor_no;