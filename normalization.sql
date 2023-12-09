create schema realestatemgt;

create table realestatemgt.propertytype(
id int primary key,
type varchar(250) not null,
description varchar(250)
);

create table realestatemgt.property(
id int primary key,
propertyid int,
name varchar(50),
dimensions varchar(100),
constraint fk_property_propertytype_propertyid foreign key (propertyid) references realestatemgt.propertytype(id)
);

create table realestatemgt.address(
id int primary key,
street varchar(100),
landmark varchar(100),
state varchar(45),
country varchar(45),
pincode int not null
);

create table realestatemgt.addressmapping(
id int primary key,
propertyid int,
addressid int,
constraint fk_addressmapping_address_propertyid foreign key(propertyid) references realestatemgt.property(id),
constraint fk_addressmapping_address_addressid foreign key(addressid)references realestatemgt.address(id)
);

drop table realestatemgt.propertytype;


alter table realestatemgt.property
drop foreign key fk_property_propertytype_propertyid;

insert into realestatemgt.propertytype(id,type,description) values(1,'Apartment','some information'),(2,'Apartment','information'),
(3,'villas','information');
insert into realestatemgt.property(id,propertyid,name,dimensions) values(1,1,'ABC Execute','250 inches'),(2,2,'DEF Execute','350 square yards'),
(3,3,'SS Execute','400 square yards');
insert into realestatemgt.address(id,street,landmark,state,country,pincode) values(1,'road no 2','kphb','Talangana','India',500000),
(2,'road no 2','kphb','Talangana','India',500000),(3,'road no 3','kphb','TS','India',500000);

insert into realestatemgt.addressmapping(id,propertyid,addressid) values (1,2,3);

select * from realestatemgt.property;
select * from realestatemgt.propertytype;
select * from realestatemgt.address;
select * from realestatemgt.addressmapping;

select * from realestatemgt.propertytype as pt
join realestatemgt.property as p on pt.id=p.propertyid;

select * from realestatemgt.propertytype as pt
join realestatemgt.addressmapping as a on pt.id=a.propertyid;

select * from realestatemgt.propertytype as pt
join realestatemgt.addressmapping as a on pt.id=a.addressid;
