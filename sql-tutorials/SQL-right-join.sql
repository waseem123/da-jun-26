USE employee_management;
SHOW TABLES;

SELECT * FROM tbl_employee;
SELECT * FROM tbl_dept;


ALTER TABLE tbl_employee
	ADD COLUMN dept_id int,
    ADD FOREIGN KEY(dept_id) references tbl_dept(dept_id);
    
UPDATE tbl_employee SET dept_id = 101
	WHERE emp_id = 10;
    
SELECT e.emp_id,
	e.emp_name,
    d.dept_name
FROM tbl_employee as e
RIGHT JOIN tbl_dept as d
ON e.dept_id = d.dept_id;

SELECT COALESCE(e.emp_id,0),
	COALESCE(e.emp_name,'NA'),
    d.dept_name
FROM tbl_employee as e
RIGHT JOIN tbl_dept as d
ON e.dept_id = d.dept_id
ORDER BY e.emp_id;

SELECT COUNT(e.emp_id),
	d.dept_name
FROM tbl_employee as e
RIGHT JOIN tbl_dept as d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING COUNT(e.emp_id)>2
ORDER BY COUNT(e.emp_id);


SELECT d.dept_name,
	round(COALESCE(avg(e.emp_salary),0),0)
FROM tbl_dept as d
LEFT JOIN tbl_employee as e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name
ORDER BY avg(e.emp_salary);

SELECT d.dept_name,
	max(e.emp_salary)
FROM tbl_dept as d
LEFT JOIN tbl_employee as e
ON e.dept_id = d.dept_id
WHERE e.emp_gender = 'Male'
GROUP BY d.dept_name;

