create schema employee;

create table employee.user(
id int primary key auto_increment,
name varchar(45) not null,
email varchar(45) not null
);
 create table employee.useraddress(
 id int primary key auto_increment,
 street varchar(45) not null,
 colony varchar(45) not null,
 post varchar(45) not null,
 mandel varchar(45) not null,
 district varchar(45) not null,
 userid int not null,
 constraint fk_useraddress_user_id foreign key(userid) references employee.user(id)
 );
 select * from employee.user;
 select * from employee.useraddress;
 
 insert into employee.user(name,email) values('sweety','s@gmail.com'),('sony','o@gmail.com');
 insert into employee.useraddress(street,colony,post,mandel,district,userid) 
 values('nehru street','nehru colony','stpuram','klm','east',1),
 ('abr street','nehru colony','stp','klmp','eastg',1),
 ('abr street','nehru colony','stp','klmp','eastg',2),
 ('abr street','nehru colony','stp','klmp','eastg',2),
 ('abr street','nehru colony','stp','klmp','eastg',3),
 ('abr street','nehru colony','stp','klmp','eastg',null);
 
 alter table employee.useraddress modify userid int null;
 
 select * from employee.user as usr
 join employee.useraddress as usradd on usr.id=usradd.userid;
 
  select * from employee.user as usr
  inner join employee.useraddress as usradd on usr.id=usradd.userid;
 
  select * from employee.user as usr
 left join employee.useraddress as usradd on usr.id=usradd.userid;
 
  select * from employee.user as usr
right join employee.useraddress as usradd on usr.id=usradd.userid;
 