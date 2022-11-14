



use employees;
select emp.first_name, emp.last_name, current_manager.dept_name,
current_manager.first_name, current_manager.last_name from employees as emp
join dept_emp as dmp on dmp.emp_no = emp.emp_no
join departments as deps on deps.dept_no = dmp.dept_no

join (select dm.emp_no, dm.dept_no, departments.dept_name as dept_name, employees.first_name, employees.last_name from dept_manager as dm
			join departments on departments.dept_no = dm.dept_no
            join employees on employees.emp_no = dm.emp_no
            where dm.to_date = '9999-01-01') as
            current_manager on current_manager.dept_no = deps.dept_no
where current_manager.dept_no = 'd009' and dmp.to_date = '9999-01-01';
