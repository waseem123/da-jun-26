ALTER TABLE tbl_employee 
	ADD COLUMN emp_gender char(1);
    
DESC tbl_employee;
DESC tbl_dept;
SELECT * FROM tbl_employee;
SELECT * FROM tbl_dept;

ALTER TABLE tbl_dept 
	ADD COLUMN dept_floor_no int  constraint check (dept_floor_no = 1 or dept_floor_no=2);

ALTER TABLE tbl_employee DROP COLUMN emp_age;