CREATE DATABASE home_work_3;

CREATE TABLE developers(
id bigint NOT NULL AUTO_INCREMENT,
firstName varchar(100) NOT NULL, 
secondName varchar(100), 
age INT, 
sex ENUM("male", "female", "unknown") NOT NULL,
primary key (id)
);

CREATE TABLE skills(
id_skills bigint NOT NULL AUTO_INCREMENT,
id_developer bigint NOT NULL ,
java bool NOT NULL, 
c_plus_plus bool NOT NULL, 
c_sharp bool NOT NULL, 
js bool NOT NULL, 
levelOfPosition varchar(30) NOT NULL,
primary key (id_skills),
FOREIGN KEY (id_developer) REFERENCES developers(id)
);

CREATE TABLE projects(
id_project bigint NOT NULL AUTO_INCREMENT,
name_of_project varchar(50) NOT NULL,
description varchar(1000),
primary key (id_project)
);

CREATE TABLE project_developer (
    id_developer bigint NOT NULL,
    id_project bigint NOT NULL,
    PRIMARY KEY (id_developer, id_project),
    FOREIGN KEY (id_project) REFERENCES projects(id_project),
    FOREIGN KEY(id_developer) REFERENCES developers(id)
);

CREATE TABLE companies(
id_company bigint NOT NULL AUTO_INCREMENT,
name_of_company varchar(50) NOT NULL,
adress varchar(100),
primary key (id_company)
);

CREATE TABLE customers(
id_customer bigint NOT NULL AUTO_INCREMENT,
name_of_customer varchar(50) NOT NULL,
adress varchar(100),
primary key (id_customer)
);


CREATE TABLE customer_project (
    id_customer bigint NOT NULL,
    id_project bigint NOT NULL,
    primary key (id_customer, id_project),
    FOREIGN KEY (id_project) REFERENCES projects(id_project),
    FOREIGN KEY(id_customer) REFERENCES customers(id_customer)
);


CREATE TABLE company_project (
    id_company bigint NOT NULL,
    id_project bigint NOT NULL,
    primary key (id_company, id_project),
    FOREIGN KEY (id_company) REFERENCES companies(id_company),
    FOREIGN KEY (id_project) REFERENCES projects(id_project)
);
