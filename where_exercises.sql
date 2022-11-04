use employees
   SELECT * FROM employees.employees
   WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
   AND gender ='M'
   LIMIT 25;