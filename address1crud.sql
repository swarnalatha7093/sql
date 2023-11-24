insert into zomato.address1(id, colony, post, mandel, pin)
values (1,'nehru','stpuram','klm', 500000);
select * from zomato.address1;
update zomato.address1 set post='stp' where colony='nehru';
delete from zomato.address1 where id = 1;
