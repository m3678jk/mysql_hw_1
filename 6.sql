	select project_developer.id_project, avg(developers.salery)
	from project_developer 
	join developers on developers.id = project_developer.id_developer
	group by project_developer.id_project
	having project_developer.id_project = (
		select id_project
		from ( 
			select  id_project, min(cost) as min_sum
			from projects
		)as al
    );
