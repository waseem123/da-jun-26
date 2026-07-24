-- AGGREGATE FUNCTIONS
-- 1. SUM
-- 2. MIN
-- 3. MAX
-- 4. COUNT
-- 5. AVG

SELECT sum(emp_salary) from tbl_employee WHERE emp_dept='Finance';
SELECT min(emp_salary) from tbl_employee;
SELECT max(emp_salary) from tbl_employee;
SELECT count(emp_id) FROM tbl_employee WHERE emp_gender='Female';
SELECT avg(emp_salary) from tbl_employee WHERE emp_dept = 'Finance';