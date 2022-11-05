
use employees

SELECT emp_no, concat(first_name,' ', last_name) AS "Full Name",
    birth_date, hire_date,
    datediff(curdate(), hire_date) AS "Days Accumulated"
        FROM employees.employees
            WHERE MONTH(birth_date) = 12
            AND DAY(birth_date) = 25
            AND YEAR(hire_date)
                BETWEEN 1990 AND 2000
            ORDER BY birth_date ASC, hire_date DESC
        LIMIT 10;