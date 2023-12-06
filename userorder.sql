create table zomato.user7(
id int primary key auto_increment,
name varchar(45) not null,
email varchar(40) not null,
phone int check(length(phone)=10)
);
create table zomato.userorder(
id int primary key auto_increment,
item int not null,
street varchar(40) not null,
location varchar(40) not null,
city varchar(40) not null,
state varchar(40) not null,
country varchar(10) default('india'),
orderid int not null,
constraint foreign key userorder_user7_orderid(orderid) references zomato.user7(id)
);
select * from zomato.user7;
select * from zomato.userorder;
select * from zomato.user7 as usr
inner join zomato.userorder as usrodr on usr.id = usrodr.orderid;

select * from zomato.user7 as usr
left join zomato.userorder as usrodr on usr.id = usrodr.orderid;

select * from zomato.user7 as usr
right join zomato.userorder as usrodr on usr.id = usrodr.orderid;

insert into zomato.user7(id, name, email, phone) values (1,'swarna','s@gmail.com', 1234567890),
(2,'sony','s@gmail.com', 1234567890),
(3,'sweety','s@gmail.com', 1234567890);

insert into zomato.userorder(id,item,street,location,city,state,country,orderid) 
values(3,4,'road 1','kbhp','hyd','telangana','india',1),
(4,4,'road 1','kbhp','hyd','telangana','india',null);

alter table zomato.userorder modify orderid int null;
