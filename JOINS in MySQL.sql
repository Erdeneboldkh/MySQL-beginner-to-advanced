-- JOINS in MySQL
SELECT *
FROM employee_demographics;
SELECT * 
FROM employee_salary;
SELECT sal.employee_id, age, occupation
FROM employee_demographics AS dem	
JOIN employee_salary AS sal
	ON dem.employee_id=sal.employee_id;
SELECT *
FROM employee_demographics AS dem	
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id=sal.employee_id;
    
-- SELF JOIN
SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name,
emp2.last_name AS last_name
FROM employee_salary AS emp1	
JOIN employee_salary AS emp2
	ON emp1.employee_id+1=emp2.employee_id
;


-- JOINING MULTIPLE TABLES TOGETHER
SELECT *
FROM employee_demographics AS dem	
JOIN employee_salary AS sal
	ON dem.employee_id=sal.employee_id;
SELECT *
FROM parks_departments;
SELECT *
FROM employee_demographics AS dem	
JOIN employee_salary AS sal
	ON dem.employee_id=sal.employee_id
JOIN parks_departments AS pd
	ON sal.dept_id=pd.department_id
    ;

    
