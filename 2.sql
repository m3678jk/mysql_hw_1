	   
	select project_developer.id_project as id_pr, developers.salery as sum
	from developers 
    join project_developer on developers.id = project_developer.id_developer 
	group by id_pr
	having sum = (
		select max(sum1) as max_cost
		from (  
			select project_developer.id_project as id_pr1, developers.salery as sum1
			from developers 
			join project_developer on developers.id = project_developer.id_developer 
			group by id_pr1
			order by count(sum1) 
    ) as a
	);
    
    
   
   
    