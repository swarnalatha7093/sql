create table employee.student(
id int primary key auto_increment,
name varchar(45),
marks int not null
);
create table employee.teacher(
id int primary key auto_increment,
name varchar(45) not null,
subject varchar(45) not null,
teacherid int not null
);

alter table employee.teacher
add constraint fk_teacher_student_id foreign key (teacherid) references student(id);

alter table employee.student 
modify column name varchar(45) not null;

alter table employee.student 
add column gender varchar(10) null;

alter table employee.teacher
drop foreign key fk_teacher_student_id;

select * from employee.student;
select * from employee.teacher;
insert into employee.student(name,marks,gender) values('swarna',23,'female'),('sony',25,'female');
insert into employee.teacher(name,subject,teacherid) values('ammu','science',1),('santhosh','social',1);
insert into employee.teacher(name,subject,teacherid) values('chinni','maths',null);
alter table employee.teacher modify teacherid int null;
select * from employee.student as std
inner join employee.teacher as tech on std.id=tech.teacherid;

select * from employee.student as std
left join employee.teacher as tech on std.id=tech.teacherid;

select * from employee.student as std
right join employee.teacher as tech on std.id=tech.teacherid;
