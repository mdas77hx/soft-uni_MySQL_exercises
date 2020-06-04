use geography;

select count(c.country_code)  as country_count
from countries as c
left join mountains_countries as mc
on c.country_code = mc.country_code
where mc.country_code is null;