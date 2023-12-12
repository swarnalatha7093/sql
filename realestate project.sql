create schema realestatemgt;

create table realestatemgt.propertytype(
id int primary key auto_increment,
type varchar(250) not null,
description varchar(250)
);

create table realestatemgt.property(
id int primary key auto_increment,
propertyid int,
name varchar(50),
dimensions varchar(100),
constraint fk_property_propertytype_propertyid foreign key (propertyid) references realestatemgt.propertytype(id)
);

create table realestatemgt.address(
id int primary key auto_increment,
street varchar(100),
landmark varchar(100),
state varchar(45),
country varchar(45),
pincode int not null
);

create table realestatemgt.addressmapping(
id int primary key auto_increment,
propertyid int,
addressid int,
constraint fk_addressmapping_address_propertyid foreign key(propertyid) references realestatemgt.property(id),
constraint fk_addressmapping_address_addressid foreign key(addressid)references realestatemgt.address(id)
);

drop table realestatemgt.propertytype;


alter table realestatemgt.property
drop foreign key fk_property_propertytype_propertyid;

insert into realestatemgt.propertytype(type,description) values('Apartment','some information'),('Apartment','information'),
('villas','information');
insert into realestatemgt.property(propertyid,name,dimensions) values(1,'ABC Execute','250 inches'),(1,'DEF Execute','350 square yards'),
(2,'SS Execute','400 square yards');
insert into realestatemgt.address(street,landmark,state,country,pincode) values('road no 2','kphb','Talangana','India',500000),
('road no 2','kphb','Talangana','India',500000),('road no 3','kphb','TS','India',500000);

insert into realestatemgt.addressmapping(propertyid, addressid) values (1,1), (1,2);

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

call get_propertydetails;

select * from propertytype;

call save_propertytype(4,'villas','good');

update propertytype set type='villas' where id=4;

delete from propertytype where type='villa';

call get_property;

select * from property;

#call save_property(4,1,'SS Execute','400 inches');

update property set name='MSR' where id=4;
delete from property where name='MSR';

call get_address;

select * from address;

call save_address(3,'kalyan nagar','panipuri shop','ap',567890);

update address set street='sr nagar' where id=1;

delete from address where street='sr nagar';

call get_addressmapping;

select * from addressmapping;

call save_addressmapping(2,2,3);

update addressmapping set propertyid=2 where id=1;

delete from addressmapping where id=2;

call get_addressmapping; select * from properyaddressmapping;

call save_addressmapping (2, 1, 1);
