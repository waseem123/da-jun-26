-- SQL Clauses
-- 1. SELECT
-- 2. FROM
-- 3. WHERE
-- 4. GROUP BY
-- 5. HAVING
-- 6. ORDER BY 
-- 7. LIMIT
SELECT emp_id,emp_name FROM tbl_employee
WHERE emp_id = 9;

SELECT * FROM tbl_employee
ORDER BY emp_salary;

SELECT * FROM tbl_employee 
WHERE emp_salary BETWEEN 85000 and 95000
ORDER BY emp_gender,emp_dept,emp_salary;

SELECT * FROM tbl_employee
ORDER BY emp_salary limit 4;

SELECT * FROM tbl_employee
ORDER BY emp_salary desc;