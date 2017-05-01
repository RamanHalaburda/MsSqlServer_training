/*
create table students (id integer primary key,
	first_name text,
	last_name text,
	email text,
	phone text,
	birthday text);*/

use computer

/*
insert into students
	values(1,'Peter', 'Rabbit', 'peter@rabbit.com', '555-6666', '2002-06-24');
	
insert into students
	values(2,'Alice', 'Wonderland', 'alice@wonderland.com', '555-4444', '2002-07-04');*/

/*
create table student_grade (id integer primary key,
	student_id integer,
	test text,
	grade integer);*/

/*
insert into student_grade
	values(1,1,'Nutrition',95);
insert into student_grade
	values(2,2,'Nutrition',92);
insert into student_grade
	values(3,1,'Chemistry',85);
insert into student_grade
	values(4,2,'Nutrition',95);*/

/*
update student_grade set test='Chemistry' where id = 4;*/

/* cross join */ /*
select * from student_grade, students;*/

/* implicit inner join */ /*
select * from student_grade, students
	where student_grade.student_id = students.id; */

/* explicit inner join - JOIN */ /*
select students.first_name, students.last_name, students.email, student_grade.test, student_grade.grade 
	from students join student_grade
	on students.id = student_grade.student_id where grade > 90; */

	/*
create table student_projects(id integer primary key,
	student_id integer, title text);

insert into student_projects values(1,1,'Carrotapault');*/

/* outer join */ /*
select students.first_name, students.last_name, student_projects.title
	from students
	/*left outer*/ join student_projects
	on students.id = student_projects.student_id;*/

/*
insert into student_projects values(2,2,'Mad Hattery');
insert into student_projects values(3,3,'Caprpet Phisics');
insert into student_projects values(4,4,'Hyena Habitats');*/

/*
create table project_pairs (id integer primary key,
	project1_id integer,
	project2_id integer);

insert into project_pairs values(1,1,2),(2,3,4);*/

/*
select * from project_pairs;*/

/* multiple join */ /*
select a.title, b.title
	from project_pairs
	join student_projects a 
		on project_pairs.project1_id = a.id
	join student_projects b 
		on project_pairs.project2_id = b.id;*/
