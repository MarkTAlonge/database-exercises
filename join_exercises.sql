use employees;

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS full_name, departments.dept_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE dept_emp.to_date = '9999-01-01' AND employees.emp_no = 10001;


select departments.dept_name as 'department name', concat(emp.first_name, ' ', emp.last_name) as manager
from departments
join dept_manager on dept_manager.dept_no = departments.dept_no
join employees as emp on emp.emp_no = dept_manager.emp_no
where dept_manager.to_date = '9999-01-01'
order by 'department name';



select departments.dept_name as 'department name', concat(emp.first_name, ' ', emp.last_name) as manager
from departments
join dept_manager on dept_manager.dept_no = departments.dept_no
join employees as emp on emp.emp_no = dept_manager.emp_no
where dept_manager.to_date = '9999-01-01' and gender = 'f'
order by 'department name'


select titles.title, count(*) as count
from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join titles on titles.emp_no = dept_emp.emp_no
where departments.dept_name = 'customer service'
  and titles.to_date = '9999-01-01'
  and dept_emp.to_date = '9999-01-01'
group by title;


SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(emp2.first_name, ' ', emp2.last_name)
FROM employees as emp
         JOIN dept_emp de on emp.emp_no = de.emp_no
         JOIN departments d on de.dept_no = d.dept_no
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees emp2 on dm.emp_no = emp2.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';
