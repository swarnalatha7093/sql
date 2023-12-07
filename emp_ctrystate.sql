create table employee.country(
id int, 
name varchar(45) not null
);
create table employee.state(
id int primary key auto_increment,
district varchar(45) not null,
countryid int not null
);

alter table employee.country 
modify column id int primary key auto_increment;

alter table employee.state
add column countrycode int not null;

alter table employee.state
add constraint fk_state_country_id foreign key (countryid) references state(id);

alter table employee.state
drop foreign key fk_state_country_id;

alter table employee.state modify countryid int null;

select * from employee.country;
select * from employee.state;

insert into employee.country(name) values('india'),('pakisthan');
insert into employee.state(district,countryid,countrycode) values('East goadavari',1,91),('West godavari',1,91);
insert into employee.state(district,countryid,countrycode) values('East goadavari',null,91);

select * from employee.country as ctry
inner join employee.state as ste on ctry.id=ste.countryid;

select * from employee.country as ctry
left join employee.state as ste on ctry.id=ste.countryid;

select * from employee.country as ctry
right join employee.state as ste on ctry.id=ste.countryid;

