user employees;



SELECT first_name, last_name, emp_no
FROM employees
WHERE hire_date IN (
    SELECT hire_date FROM employees
    WHERE emp_no = 101010
);

/*
--select distinct concat( t.title) as `Job Description`,
--count(e.first_name) as `Aamod Count` from employees as e
--JOIN titles as t on e.emp_no = t.emp_no
--where first_name = 'Aamod' group by t.title
*/

/*getting all titles held by employee 'Aamod' */
CREATE VIEW IF NOT EXIST find_aamods as
select title, COUNT(title) from titles as tit join
    employees as emp on emp.emp_no = tit.emp_no
        where emp.emp_no in (select emp_no from employees where first_name = 'Aamod')
    GROUP BY title;

select * from find_aamods;


/*getting all the current female managers in the company*/
select distinct e.first_name, e.last_name from employees as e
    JOIN (select dept_no, emp_no, to_date from dept_manager) as da on da.emp_no = e.emp_no
    JOIN departments as d on d.dept_no = da.dept_no
    where e.gender = 'F' AND da.to_date = '9999-01-01';

