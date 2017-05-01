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

/* inner join */
select * from student_grade, students
	where student_grade.student_id = students.id;