   
	select project_developer.id_project as id_pr, sum(developers.salery) as sum_of_salery
	from developers 
	join project_developer on developers.id = project_developer.id_developer 
	group by id_pr
	order by sum_of_salery desc
    limit 1
	;
    
    
   
   
    
   
   
    