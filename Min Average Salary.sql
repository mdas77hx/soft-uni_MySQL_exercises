use soft_uni;

select min(average_salary) as min_average_salary
from (
		select avg(salary) as average_salary
		from employees
		group by department_id
     ) as emb_q;