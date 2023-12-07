create table employee.product(
id int primary key auto_increment,
name varchar(45) not null,
color varchar(20) not null
);
create table employee.productdetails(
id int primary key auto_increment,
item varchar(45) not null,
quality varchar(45) not null,
productid int not null,
constraint fk_productdetails_product_id foreign key (productid) references product(id)
);
select * from employee.product;
select * from employee.productdetails;

insert into employee.product(name,color) values('face pack','green'),('coffee powder','brown'),('pealmask','orange'),('mask','yellow');
insert into employee.productdetails(item,quality,productid) values('greentea','good',3),('browntea','bad',3),('yellowtea','bad',null);

select * from employee.product as pdt
inner join employee.productdetails as ptdtls on pdt.id=ptdtls.productid;

select * from employee.product as pdt
left join employee.productdetails as ptdtls on pdt.id=ptdtls.productid;

alter table employee.productdetails modify productid int null;
 
select * from employee.product as pdt
right join employee.productdetails as ptdtls on pdt.id=ptdtls.productid;

select * from employee.product
cross join employee.productdetails;