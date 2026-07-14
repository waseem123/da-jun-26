USE employee_management;
SELECT * FROM tbl_employee;
UPDATE tbl_employee SET 
	emp_dept = 'Finance';
    
UPDATE tbl_employee SET
	emp_dept = 'HR'
WHERE emp_gender = 'Female';

UPDATE tbl_employee SET
	emp_dept = 'Production'
    WHERE emp_id = 5;

UPDATE tbl_employee SET
emp_dept = 'R&D' 
WHERE emp_salary>95000;

UPDATE tbl_employee SET
emp_salary = emp_salary + 1000
WHERE emp_dept = 'Finance';

UPDATE tbl_employee set
	emp_salary = emp_salary + 1000,
	emp_dept = 'Engineering'
WHERE emp_salary > 95000;
