use employee_management;
SELECT * FROM tbl_employee;

SELECT emp_dept, COUNT(emp_id) FROM tbl_employee
	GROUP BY emp_dept;
    
SELECT emp_dept,COUNT(emp_id) FROM tbl_employee
    GROUP BY emp_dept
    HAVING COUNT(emp_id)>1;
    
SELECT emp_dept,COUNT(emp_id) FROM tbl_employee
	WHERE emp_dept!='Engineering'
    GROUP BY emp_dept
    HAVING COUNT(emp_id)>1
    ORDER BY COUNT(emp_id) desc
    LIMIT 1;
