   
    create table result
    select developers.salery as sal, skills.Java as java
	from developers 
	inner join skills on developers.id = skills.id_developer
    where java = true
    ;
    
    select sum(sal) sum_of_salery
    from result;
    
    drop table result;
    
