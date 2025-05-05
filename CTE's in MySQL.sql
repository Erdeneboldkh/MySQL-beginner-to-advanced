-- CTE's Example
WITH CTE_Example AS
(
SELECT gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
group by Gender
)
SELECT avg(avg_sal)
FROM CTE_Example
;
-- Multiple CTE
WITH CTE_Example AS
(
SELECT employee_id,gender, birth_date
FROM employee_demographics 
WHERE	birth_date> '1985-01-01'
),
CTE_Example2 AS
(select employee_id, salary
from employee_salary
where salary>50000
)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	on CTE_Example.employee_id=CTE_Example2.employee_id
;
   
   
   WITH CTE_Example (gender, avg_sal, max_sal, min_sal, count_sal)AS
(
SELECT gender, avg(salary), max(salary), min(salary), count(salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
group by Gender
)
SELECT *
FROM CTE_Example
;
