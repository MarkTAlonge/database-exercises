use employees;

select * from employees where (first_name like 'irena' and gender = 'm'
    or first_name like 'Vidya' and gender = 'm'
    or first_name like 'Maya' and gender = 'm')order by last_name , first_name ;

select * from employees where last_name like '%E' or last_name like 'E%'order by emp_no;

select * from employees where last_name like '%E' and last_name like 'E%';


select * from employees where hire_date between '1990-01-01' and '1999-12-31';

select * from employees where hire_date between '1990-01-01' and '1999-12-31' and birth_date  like '%-12-25'order by birth_date asc, hire_date desc;


select * from employees where birth_date  like '%-12-25';

select * from employees where last_name like '%q%' and last_name not like '%qu%';
