
use employees
   SELECT * FROM employees.employees
       WHERE first_name LIKE 'E%'
       OR last_name LIKE '%q%'
       OR first_name LIKE '%E'
       OR first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya'
       AND gender ='M'
       AND last_name NOT LIKE '%qu%'
       ORDER BY first_name DESC, last_name ASC
   LIMIT 25;

