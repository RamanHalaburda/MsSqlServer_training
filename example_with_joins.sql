/*
create table t1 (k1 integer primary key, d1 integer);
create table t2 (k2 integer primary key, d2 integer);

insert into t1 values(1,1),(2,2),(3,3),(4,4);
insert into t2 values(1,10),(2,20),(5,50),(6,60);
*/


select t1.d1, t2.d2 
	from t1 /*inner*/ join t2
	on t1.k1 = t2.k2; 

select t1.d1, t2.d2 
	from t1 left join t2
	on t1.k1 = t2.k2; 

select t1.d1, t2.d2 
	from t1 right join t2
	on t1.k1 = t2.k2; 

select t1.d1, t2.d2 
	from t1 full outer join t2
	on t1.k1 = t2.k2; 

select d1,d2 
	from t1 left join t2 on t1.k1 = t2.k2
	union all
select d1,d2
	from t1 right join t2 on t1.k1 = t2.k2
	where d1 is null;