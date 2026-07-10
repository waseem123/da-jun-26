USE employee_management;
DESC tbl_employee;
DESC tbl_dept;

INSERT INTO tbl_employee
	VALUES(1,'Sufiyan',88000,'Male');
INSERT INTO tbl_employee
	VALUES(3,'Madiha',85000,'Female');
    
SELECT * FROM tbl_employee;

INSERT INTO tbl_employee 
	(emp_id,emp_name,emp_salary,emp_gender) 
		VALUES ('Faiz',92000,'Male');
        
INSERT INTO tbl_employee 
	(emp_salary,emp_name,emp_gender) 
		VALUES (94000,'Siddharam','Male');
        
INSERT INTO tbl_employee 
	(emp_salary,emp_name,emp_gender) 
		VALUES (100000,'Babu','Male');