Select *	
From parks_and_recreation.employee_demographics
;
Select first_name,
last_name,
birth_date,
age,
(age + 10)*10
From parks_and_recreation.employee_demographics
;
# PEMDAS


Select  distinct first_name, gender
from parks_and_recreation.employee_demographics;

