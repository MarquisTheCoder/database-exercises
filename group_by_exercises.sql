
use employees

SELECT DISTINCT TITLE from employees.titles;

SELECT first_name FROM employees.employees
    WHERE first_name LIKE 'E%e'
        GROUP BY first_name;


SELECT DISTINCT concat(first_name, last_name) FROM employees.employees
    WHERE last_name LIKE 'E%e';

SELECT COUNT(last_name), last_name FROM employees.employees
    WHERE last_name LIKE '%q%' and NOT '%qu%' GROUP BY last_name;


   SELECT COUNT(gender), gender from employees.employees
        WHERE first_name = 'Irena'
            OR first_name = 'Vidya'
            OR first_name = 'Maya'
   GROUP BY gender
