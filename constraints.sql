use zomato;
create table zomato.user4(
id int primary key,
name varchar (45) not null,
mobileno int check(length(mobileno)=10),
age int check(age>=18)
);
select * from zomato.user4;
insert into zomato.user4(id,name,mobileno,age) values (1,'swarna',1234567890,20);

use zomato;
create table zomato.user5(
id int primary key,
name varchar (45) not null,
state varchar (20) not null,
country varchar (20)default('india')
);
insert into zomato.user5(id,name,state)values(1,'swarna','ap');
select *from zomato.user5;

use zomato;
create table zomato.user6(
id int primary key auto_increment,
name varchar (45) not null,
mobileno int check (length(mobileno)=10),
age int check(age>=18)
);
insert into zomato.user6(name,mobileno,age)values('swarna',1234567890,20);
select * from zomato.user6;
