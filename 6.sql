-- Вычислить среднюю ЗП программистов в самом дешевом проекте.

create table id_of_min_cost_project
select  id_project, cost
from projects
having cost = (
	select min(cost) as cost_min
	from projects
);

create table sum_sal
select project_developer.id_project, developers.salery
from project_developer 
inner join developers on developers.id = project_developer.id_developer
having project_developer.id_project = (
	select id_project
	from id_of_min_cost_project
);

select * from sum_sal;

select avg(salery) avg_salery
from sum_sal;

drop table id_of_min_cost_project;
drop table sum_sal;