    select sum(sal) sum_of_salery
    from 
		( select developers.salery as sal, skills.Java as java
		from developers 
		inner join skills on developers.id = skills.id_developer
		where java = true
    ) as a;
    
        
