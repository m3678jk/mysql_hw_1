alter table projects 
add cost int;

update projects
set cost = 18000
where id_project = 1;

update projects
set cost = 15000
where id_project = 2;

update projects
set cost = 14300
where id_project = 3;

update projects
set cost = 23000
where id_project = 4;

select * from projects;

