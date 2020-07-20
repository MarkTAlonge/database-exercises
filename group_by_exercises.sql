use employees;


select distinct titles.title from titles;

select distinct last_name from employees where last_name like 'e%e' group by last_name;


select last_name, first_name from employees where last_name like 'E%E' group by last_name, first_name;



select last_name from employees where last_name like '%q%' and last_name not like '%qu%' group by last_name;


select count(last_name)
from employees
where last_name like '%q%' and last_name not like '%qu%' group by last_name;



select count(*) from employees where first_name like 'irena'
    or first_name like 'Vidya'
    or first_name like 'Maya' group by gender;
