create table zomato.products(
 id int primary key,
 name varchar(45) not null,
 address varchar(50) not null,
 pincode int check(length(pincode)=6)
);

select * from zomato.products as prds
right join zomato.productsspecification as prdsadd on prds.id=prdsadd.productsid;

alter table zomato.productsspecification
modify productsid int null;


select * from zomato.products as prds
left join zomato.productsspecification as prdsadd on prds.id=prdsadd.productsid;

select * from zomato.products as prds
inner join zomato.productsspecification as prdsadd on prds.id=prdsadd.productsid;

insert into zomato.productsspecification(id,productsname,productsprice,productsfeedback,productsdiscount,productsid)
values(5,'abcd','twors','fourstar','twoper',null),
(6,'bcde','fourrs','threestar','oneper',null);


insert into zomato.products(id,name,address,pincode)values(5,'satya','abc',533430),(6,'swarna','abc',533430),
(7,'sony','bcd',533431);

create table zomato.productsspecification (
  id int primary key auto_increment,
  productsname varchar(45) not null,
  productsprice varchar(50)not null,
  productsfeedback varchar(50)not null ,
  productsdiscount varchar(50)not null,
  productsid int not null,
  constraint foreign key productsspecification_products_productsid(productsid) references zomato.products(id)
  );