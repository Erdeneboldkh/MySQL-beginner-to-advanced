-- Having vs Where

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING Avg(age)>40;



SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary)>7500;
