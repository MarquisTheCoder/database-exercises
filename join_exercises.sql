

use join_test_db;

SELECT u.id as user_id, u.name as user_name, email, r.id as role FROM users as u
    JOIN roles as r ON u.role_id = r.id;

SELECT u.id as user_id, u.name as user_name, email, r.id as role FROM users as u
    LEFT JOIN roles as r ON u.role_id = r.id;

SELECT u.id as user_id, u.name as user_name, email, r.id as role FROM users as u
    RIGHT JOIN roles as r ON u.role_id = r.id;


SELECT COUNT(u.name) as users_with_defined_role FROM users as u
    JOIN roles as r ON u.role_id = r.id;

use employees

SELECT d.dept_name AS `Department Name` , CONCAT(e.first_name,' ', e.last_name)
    AS  `Department Manager` FROM employees AS e JOIN dept_manager AS dm ON
        dm.emp_no = e.emp_no JOIN departments AS d ON
            d.dept_no = dm.dept_no
        WHERE dm.to_date = '9999-01-01';

SELECT CONCAT(d.dept_name) AS `Department Name`,
CONCAT(e.first_name,' ', e.last_name) AS `Department Manager`
FROM employees AS e
INNER JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
INNER JOIN departments as d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

SELECT t.title, COUNT(t.title) as Total, d.dept_name as Total FROM employees as e
INNER JOIN titles as t ON e.emp_no = t.emp_no
INNER JOIN dept_emp as de ON e.emp_no = de.emp_no
INNER JOIN departments as d ON de.dept_no = d.dept_no
WHERE d.dept_no = 'd009' GROUP BY t.title


select t.title, count(e.emp_no) as Total from departments as dpts
join current_dept_emp as dmp on dmp.dept_no = dpts.dept_no
join employees as e on e.emp_no = dmp.emp_no
join titles as t on t.emp_no = e.emp_no
where dmp.dept_no = 'd009' and t.to_date = '9999-01-01'
group by t.title


SELECT d.dept_name, CONCAT(e.first_name,' ', e.last_name) AS `Department Manager`,s.salary as Salary, dm.to_date
FROM employees AS e
INNER JOIN salaries as s ON s.emp_no = e.emp_no
INNER JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
INNER JOIN departments as d ON d.dept_no = dm.dept_no

WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';