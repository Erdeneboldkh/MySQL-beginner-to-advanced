-- Group by
select gender
from parks_and_recreation.employee_demographics
group by gender
;
select gender, AVG(age), MAX(age), Min(age), Count(age)
from parks_and_recreation.employee_demographics
group by gender
;
select occupation, salary
from employee_salary
group by occupation, salary
;
-- Order by
select *
from parks_and_recreation.employee_demographics
order by first_name asc;
select *
from parks_and_recreation.employee_demographics
order by first_name desc;
select *
from parks_and_recreation.employee_demographics
order by gender, age asc;
select *
from parks_and_recreation.employee_demographics
order by gender, age desc;
