SELECT * FROM tbl_employee;

SELECT  emp_dept,COUNT(emp_id) 
	FROM tbl_employee
    WHERE emp_dept IN('HR','Production')
	GROUP BY emp_dept;
    
SELECT emp_gender,COUNT(emp_id) FROM tbl_employee
	GROUP BY emp_gender;
    
SELECT emp_dept,min(emp_salary),max(emp_salary)
	FROM tbl_employee
    GROUP BY emp_dept
    ORDER BY emp_dept;
    
SELECT count(emp_id) FROM tbl_employee
WHERE emp_name LIKE 'S%';

SELECT emp_dept,avg(emp_salary) FROM tbl_employee
GROUP BY emp_dept;