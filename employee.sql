create table zomato.employee(
id int primary key auto_increment,
name varchar(45) not null,
email varchar(40) not null,
phone int check(length(phone)=10)
);

create table zomato.employeeaddress(
id int primary key auto_increment,
street varchar(40) not null,
location varchar(40) not null,
city varchar(40) not null,
state varchar(40) not null,
country varchar(10) default('india'),
empid int not null,
constraint foreign key employeeaddress_employee_empid(empid) references zomato.employee(id)
);
select * from zomato.employee;
select * from zomato.employee as emp
inner join zomato.employeeaddress as empadd on emp.id = empadd.empid;

select * from zomato.employee as emp
left join zomato.employeeaddress as empadd on emp.id = empadd.empid;

select * from zomato.employee as emp
right join zomato.employeeaddress as empadd on emp.id = empadd.empid;

insert into zomato.employee(id, name, email, phone) values (1,'swarna','s@gmail.com', 1234567890),
(2,'sony','s@gmail.com', 1234567890),
(3,'sweety','s@gmail.com', 1234567890);

insert into zomato.employeeaddress(id,street,location,city,state,country,empid) 
values(3,'road 1','kbhp','hyd','telangana','india',1),
(4,'road 1','kbhp','hyd','telangana','india',null);

alter table zomato.employeeaddress modify empid int null;