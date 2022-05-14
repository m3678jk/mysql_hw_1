
insert into developers (firstName, secondName, age, sex) values 
("Lee", "Lui", 26, "unknown"),
("Jan", "Kowalski", 30, "male"),
("Joanna", "Kielbasa", 30, "female"),
("Kamil", "Nowak", 28, "male")
;

insert into skills(id_developer, java, c_plus_plus, c_sharp, js, levelOfPosition) values 
(1, true, false, false, true, "Junior"),
(3, true, true, true, true, "Senior"),
(2, false, true, true, false, "Middle"),
(4, true, false, true, true, "Middle")
;

insert into projects (name_of_project, description) values
("warehouse", "organizing stock in warehouse"),
("accountant application", "application to count of workhours"),
("demand forecast" , "anylize of market"),
("HR app", "app for HR department")
;


insert into project_developer values
(1,3),
(2,3),
(3,1),
(4,2),
(2,1),
(2,2),
(3,3)
;

insert into companies (name_of_company, adress) values
("Capgemini", "France, Paris"),
("BNY Mellon" , "New York"),
("Opera", "Wroclaw")
;

insert into customers(name_of_customer, adress) values 
("Kovolis", "Zleby"),
("ZF", "Lagenhagen"),
("Clean Logistoc", "Stockach"),
("RDW", "Regensbur")
;

insert into customer_project values
(3,1),
(2,2),
(2,3),
(3,4)
;

insert into company_project values
(2,1),
(1,2),
(3,3),
(2,4)
;

