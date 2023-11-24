insert into zomato.state(id, name, state, pin)
values (1,'swarna','india', 506780);
select * from zomato.state;
update zomato.state set pin=500000 where name='swarna';
delete from zomato.state where id = 1;
