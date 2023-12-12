create table realestatemgt.employee(
id int primary key auto_increment,
name varchar(50) not null ,
sal bigint(10) not null,
state varchar(50)not null,
country varchar(50)not null default('India'),
isactive bit default(1)
);

insert into employee(name,sal,state) values('swarna',30000,'AP'),('sony',40000,'AP'),('sweety',40000,'AP');
insert into employee(name,sal,state,country) values('santhosh',30000,'AP','US'),('suresh',40000,'AP','UK');
#Aggrigate
select * from realestatemgt.employee;
select (id) from realestatemgt.employee;
select count(*) from realestatemgt.employee;
select count(sal) from realestatemgt.employee;
select max(sal) from realestatemgt.employee;
select min(sal) from realestatemgt.employee;
select avg(sal) from realestatemgt.employee;
select sum(sal) from employee;
select sal from realestatemgt.employee order by (sal) desc ;
select sal from realestatemgt.employee order by (sal) asc;
select count(id) from employee where country='India';
select count(id) from employee where country='US';
select count(id) from employee where state='AP';
select state,count(id) as noofemployees from employee group by state;
select country,count(id) as noofemployees from employee group by country;
select state,country,count(id) as nooofemployees from employee group by country,state;
select country,state,count(id) as noofemployees from employee where sal>=40000 group by country,state;
select country,state,count(id) as noofemployees from employee where sal>=40000 group by country,state having count(id)>=1;

#string
insert into employee(name,sal,state,country) values('	riya	',50000,'Andhrapradesh','canda');
select rtrim('	swarna	') from dual;
select ltrim('	swarna	') from dual;
select ltrim(   name) from employee;
select rtrim(name) from employee;
select trim(name) from employee;
select length(country) from employee;
select left(name,2) from employee;
select right(name,2) from employee;
select upper('swarna') from employee;
select lower('SWARNA') from employee;
#date
select current_date();
select now();
select date_add("2023-12-12",interval 20 day);
select current_time();
select current_timestamp();
select year('2023-12-12');
select month('2023-12-12');
select monthname('2023-12-12');
select day('2023-12-12');
select day('2023-07-12');
select dayname('2023-12-12');
#advanced
