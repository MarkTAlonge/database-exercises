use employees;


select employees.last_name, employees.first_name, emp_no, hire_date
from employees;

select concat(employees.last_name, ' ', employees.first_name, ' ',  emp_no, ' ',  hire_date)
from employees
where hire_date = (
    select hire_date
    from employees
    where emp_no = '101010'
    )
;
select title
from titles
where emp_no in(
select emp_no
from employees
where first_name = 'Aamod'
    );

select first_name, last_name, emp_no
from employees
where emp_no in(
    select emp_no
    from dept_manager
    where to_date > now()
    )
and gender = 'f'
;
