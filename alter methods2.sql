use zomato;

drop table zomato.person;

alter table zomato.personaddress
drop foreign key personaddress_ibfk_1;

create table zomato.`person`(
id int ,
name varchar(50) not null,
email varchar(50) null,
phone int check(length(phone)=10)
);
alter table zomato.person
add constraint person_pk_id primary key(id);

alter table zomato.personaddress
add constraint fk_personaddress_person_id foreign key(personid) references zomato.person(id); 

create table zomato.personaddress(
id int primary key auto_increment,
street varchar(50) not null,
location varchar(50) not null,
city varchar(50) not null,
state varchar(20) not null,
country varchar(10) default ('India'),
personid int not null,
constraint foreign key personaddress_person_personid(personid) references zomato.person(id)
);
select *from zomato.person;
select *from zomato.personaddress;
alter table zomato.person add column gender varchar(10);
alter table zomato.person modify gender varchar(6);
alter table zomato.person drop column gender;
alter table zomato.person modify name varchar(50) not null;
alter table zomato.person modify name varchar(50) null;
alter table zomato.person add constraint unique_name unique(name); 
alter table zomato.person drop index unique_name;
alter table zomato.person add constraint check_name_3 check(length(name)>=3);
alter table zomato.person drop check chk_name_3;


