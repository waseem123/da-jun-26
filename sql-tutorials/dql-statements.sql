use employee_management;

show tables;

SELECT * FROM tbl_employee;
SELECT * FROM tbl_dept;
SELECT * FROM tbl_temp;
SELECT emp_dept,emp_name,emp_id FROM tbl_employee;
SELECT emp_id,emp_name,emp_gender FROM tbl_temp WHERE emp_dept='Finance';

SELECT * FROM tbl_employee
	WHERE emp_name = 'Faiz';
SELECT * FROM tbl_employee WHERE emp_id=6;
SELECT * FROM tbl_employee WHERE emp_dept='Engineering';

SELECT * FROM tbl_temp WHERE emp_salary > 85000;
SELECT emp_name FROM tbl_temp;

SELECT * FROM tbl_temp
	WHERE emp_salary>90000 
	AND emp_dept='HR';
    
SELECT * FROM tbl_temp 
	WHERE emp_dept='Engineering'
    OR emp_dept='Production';
