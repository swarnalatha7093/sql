create table employee.users(
 id int primary key auto_increment,
 name varchar(45) not null
 );

 create table employee.userorder(
  id int primary key auto_increment,
  street varchar(40) not null,
  location varchar(35) not null,
  city varchar(25) not null,
  state varchar(30) not null,
  userid int not null,
  constraint fk_userorder_users_id foreign key(userid) references employee.users(id)
  );
  
select * from employee.users;
 
select * from employee.userorder; 

 insert into employee.users(name)values('swarna');
 insert into employee.users(name)values('sony');
 
 
 insert into employee.userorder(street,location,city,state,userid)values('ganta','lmp','prt','eg',1);
 insert into employee.userorder(street,location,city,state,userid)values('gampa','utt','klm','wg',null);
 
 select * from employee.users as usr
 join employee.userorder as usrod on usr.id=usrod.userid;
 
 
 select * from employee.users as usr
 left join employee.userorder as usrod on usr.id=usrod.userid;
 
 alter table employee.userorder
 modify userid int null;
 
 select * from employee.users as usr
 right join employee.userorder as usrod on usr.id=usrod.userid;
 
 select * from employee.users
 cross join employee.userorder;