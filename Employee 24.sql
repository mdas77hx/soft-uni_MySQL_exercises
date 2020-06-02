use soft_uni;

select e.employee_id, e.first_name, 
		if(year(p.start_date) < 2005, p.name, null) as project_name
from employees as e
join employees_projects as ep
on e.employee_id = ep.employee_id
join projects as p
on ep.project_id = p.project_id
where e.employee_id = 24
order by project_name;