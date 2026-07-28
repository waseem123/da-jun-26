USE db_school;
SELECT * FROM tbl_student;

SELECT stud_gender, COUNT(roll_no)
FROM tbl_student
GROUP BY stud_gender;

SELECT stud_city,COUNT(roll_no) 
FROM tbl_student
GROUP BY stud_city;

SELECT stud_name,stud_city,max(stud_marks)
FROM tbl_student
GROUP BY stud_city,stud_name;

SELECT stud_city,MIN(stud_marks)
FROM tbl_student
GROUP BY stud_city
HAVING COUNT(roll_no)>1;