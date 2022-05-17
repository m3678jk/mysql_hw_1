select avg(salery) avg_salery
from (
	select project_developer.id_project, developers.salery
	from project_developer 
	inner join developers on developers.id = project_developer.id_developer
	having project_developer.id_project = (
		select id_project
		from ( 
			select  id_project, cost
			from projects
			having cost = (
				select min(cost) as cost_min
				from projects
			))as al2
		)) as al1
;
