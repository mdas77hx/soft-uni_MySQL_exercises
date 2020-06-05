use soft_uni;

select e1.first_name, e1.last_name, e1.department_id
from employees as e1 
where 	  e1.salary > (
			select avg(e2.salary) as average_salary
                        from employees as e2
                        where e2.department_id = e1.department_id
                        group by e2.department_id
		       )
order by department_id, employee_id
limit 10;