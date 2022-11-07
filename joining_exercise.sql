SELECT emp.emp_no,
       first_name,
       last_name,
       gender, salary,
       from_date
       FROM employees.employees AS emp
       JOIN salaries AS sal ON emp.emp_no = sal.emp_no LIMIT 10;