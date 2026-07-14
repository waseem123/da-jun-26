USE employee_management;
DESC tbl_employee;
DESC tbl_dept;
-- INSERT INTO <table_name> 
-- VALUES(value1,value2,...valueN);
INSERT INTO tbl_employee
	VALUES(1,'Sufiyan',88000,'Male');
    
INSERT INTO tbl_employee
	VALUES(8,'Swarada',88000,'Female');
    
SELECT * FROM tbl_employee;
-- INSERT INTO <table_name> (column1,column2,..columnN)
-- 	VALUES(value1,value2...valueN);

INSERT INTO tbl_employee 
	(emp_name,emp_gender,emp_salary) 
		VALUES ('Onkar','Male',93000);
        
INSERT INTO tbl_employee 
	(emp_salary,emp_name,emp_gender) 
		VALUES (94000,'Siddharam','Male');
        
INSERT INTO tbl_employee 
	(emp_salary,emp_name,emp_gender) 
		VALUES (100000,'Babu','Male');
        
SELECT * FROM tbl_dept;
INSERT INTO tbl_dept VALUES
	(101,'Computer Science','A','Spider Man'),
    (102,'AI & DS','B','Iron Man'),
    (103,'Electronics','C','Batman');
    
INSERT INTO tbl_dept(dept_name,dept_hod)
	VALUES ('Civil','Hulk'),
			('Mechanical','Captain America'),
            ('Electrical','Black Widow');