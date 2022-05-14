	create table  res
    select project_developer.id_project as id_pr, developers.salery as sum
	from developers 
	inner join project_developer on developers.id = project_developer.id_developer 
	group by id_pr
	order by count(sum) 
    ;

	select id_pr, sum
    from res 
	having sum = (
		select max(sum) as max_cost
		from res            
	);
    
	drop table res;
    
   
   
    