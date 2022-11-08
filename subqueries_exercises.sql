user employees;

--jdjjdsfkljbfsbdf
select concat(first_name, ' ', last_name) from employees.employees
    where hire_date in (select hire_date from employees where emp_no = 101010);