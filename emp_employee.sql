create table employee.employee(
id int primary key auto_increment,
name varchar(45) not null,
domain varchar(45) 
);
create table employee.empaddress(
id int primary key auto_increment,
companyname varchar(45) not null,
location varchar(45) not null,
employeeid int not null
);

alter table employee.empaddress
add constraint fk_empaddress_employee_id foreign key (employeeid) references employee(id);

alter table employee.employee
modify column domain varchar(45) not null;

alter table employee.empaddress
add column weekend varchar(45) not null;

select * from employee.employee;
select * from employee.empaddress;

insert into employee.employee(name,domain) values('swarna','software'),('sony','hardware');
insert into employee.empaddress(companyname,location,employeeid,weekend) 
values('wipro','hyd',1,'sun'),('Tcs','banglore',1,'sat');

insert into employee.empaddress(companyname,location,employeeid,weekend) 
values('hcl','hyd',null,'sun');

alter table employee.empaddress modify employeeid int null;

select * from employee.employee as emp
inner join employee.empaddress as empadd on emp.id=empadd.employeeid;

select * from employee.employee as emp
left join employee.empaddress as empadd on emp.id=empadd.employeeid;

select * from employee.employee as emp
right join employee.empaddress as empadd on emp.id=empadd.employeeid;

select * from employee.employee
join employee.empaddress;

select emp.id,empadd.companyname from employee.employee as emp
join employee.empaddress as empadd on emp.id=empadd.employeeid;




