USE employee_management;

SELECT * FROM tbl_employee;

SELECT * FROM tbl_employee 
	WHERE emp_dept IN('Finance','HR','Production');
    
SELECT * FROM tbl_employee 
	WHERE emp_dept ='Finance'
    OR emp_dept='HR'
    OR emp_dept='Production';
    
SELECT * FROM tbl_employee 
	WHERE emp_dept NOT IN('Finance','HR','Production');
    
SELECT * FROM tbl_employee 
	WHERE emp_dept !='Finance'
    AND emp_dept!='HR'
    AND emp_dept!='Production';
    
SELECT * FROM tbl_employee
	WHERE emp_salary BETWEEN 85000 and 95000
    AND emp_gender='Male';
    
SELECT * FROM tbl_employee
	WHERE emp_name LIKE 'S%a';
    
SELECT * FROM tbl_employee
	WHERE emp_name LIKE 'A__a';