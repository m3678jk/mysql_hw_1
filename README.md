# mysql_hw_1
Task 1:
You need to create a database that contains the following tables:
- developers (stores data about developers (name, age, gender, etc.))
- skills (industry - Java, C++, C#, JS; skill level - Junior, Middle, Senior)
- projects (projects where developers work)
- companies (IT companies where developers work)
- customers (customers who are customers of projects in IT companies)
 

Wherein:
- each table must contain at least 3 fields, one of which is id;
- develop a ManyToMany relationship:
- one developer has many projects;
- developers can have many skills;
- each project has many developers;
- companies carry out many projects at the same time - customers have many projects;

It is necessary to implement both tables and competent relationships between them.
The result of the task is the files initDB.sql (creating tables and relationships between them), populateDB.sql (filling tables with data).
Tip: before you build tables right away - first draw them, right on a piece of paper, write down where it will be, 
just draw these same "many to many" - and that's it. And not from table to table - but specifically from field to field.

Task 2:

You need to create queries that perform the following tasks:

1. Add a field for developers (salary - salary).
2. Find the most expensive project (based on the salary of all developers).
3. Calculate the total RFP of Java developers only.
4. Add a field (cost - cost) to the table Projects .
5. Find the cheapest project (based on the cost of all projects).
6. Calculate the average salary of programmers in the cheapest project.


The result of the task execution is files 1.sql, 2.sql ... 6.sql, each of which receives data for each of the task items.

Use of MySQL / PostgreSQL technology to choose from.
