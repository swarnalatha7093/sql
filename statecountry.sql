use zomato;
drop table zomato.state;
drop table zomato.country;

create table zomato.country( 
cno int primary key auto_increment,
cname varchar(45) not null,
clanguage varchar(45) not null
);
create table zomato.state(
sno int primary key auto_increment,
sname varchar(45) not null,
saddress varchar(45) not null,
slocation varchar(45) not null,
stateid int not null,
constraint foreign key state_country_stateid(stateid) references zomato.country(cno)
);

select * from zomato.state;
insert into zomato.state(sno,sname,saddress,slocation,stateid) values(10,'AP','abc address','abc location',11),
(12,'AP','abc address','abc location',14),(15,'AP','abc address','abc location',null);

select * from zomato.country;
insert into zomato.country(cno,cname,clanguage) values(11,'india','telugu'),(14,'india','telugu');

select * from zomato.country as ctry
inner join zomato.state as ste on ctry.cno = ste.stateid;

select * from zomato.country as ctry
left join zomato.state as ste on ctry.cno = ste.stateid;

select * from zomato.country as ctry
right join zomato.state as ste on ctry.cno = ste.stateid;

alter table zomato.state modify stateid int null;

