-- Where Clause
Select*	
from parks_and_recreation.employee_salary
where first_name='Leslie'
;


Select*	
from parks_and_recreation.employee_salary
where salary>50000;
Select*	
from parks_and_recreation.employee_salary
where salary>=50000;

Select*	
from parks_and_recreation.employee_demographics
where gender='Female'
;
Select*	
from parks_and_recreation.employee_demographics
where gender!='Female'
;
Select*	
from parks_and_recreation.employee_demographics
where birth_date>'1985-01-01'
;

-- AND or NOT -Logical Operators
Select*	
from parks_and_recreation.employee_demographics
where birth_date>'1985-01-01'
and gender='male'
;

Select*	
from parks_and_recreation.employee_demographics
where birth_date>'1985-01-01'
or not gender='male'
;
Select*	
from parks_and_recreation.employee_demographics
where (first_name='Leslie' AND age=44) or age>55
;

-- Like Statement
-- % and _
Select*	
from parks_and_recreation.employee_demographics
where first_name Like 'Jer%'
;
Select*	
from parks_and_recreation.employee_demographics
where first_name Like '%er%'
;
Select*	
from parks_and_recreation.employee_demographics
where first_name Like 'a%'
;
Select*	
from parks_and_recreation.employee_demographics
where first_name Like 'a__'
;
Select*	
from parks_and_recreation.employee_demographics
where first_name Like 'a___'
;
Select*	
from parks_and_recreation.employee_demographics
where first_name Like 'a___%'
;
Select*	
from parks_and_recreation.employee_demographics
where birth_date Like '1989%'
;