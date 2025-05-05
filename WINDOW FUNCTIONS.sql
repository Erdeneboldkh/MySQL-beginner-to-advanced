-- WINDOW FUNCTIONS
SELECT dem.first_name,dem.last_name, gender, salary,
sum(salary) over(partition by gender order by dem.employee_id) as Rolling_Total	
FROM employee_demographics dem 
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
;

SELECT dem.first_name,dem.last_name, gender,avg(salary)
FROM employee_demographics dem 
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
group by dem.first_name,dem.last_name, gender;


SELECT dem.employee_id,dem.first_name,dem.last_name, gender, salary,
Row_number() over(partition by gender order by salary desc) row_num,
rank() over(partition by gender order by salary desc) rank_num,
Dense_rank() over(partition by gender order by salary desc) as dense_rank_num
From employee_demographics as dem
JOIN employee_salary  as sal
	ON dem.employee_id=sal.employee_id
;