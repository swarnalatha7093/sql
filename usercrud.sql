insert into zomato.user(id, name, email, phoneno, pincode, country)
values (1,'swarna','s@gmail.com','988999999', 500000, 'abccountry');
select * from zomato.user;
update zomato.user set country='india' where name='swarna';
delete from zomato.user where id = 1;