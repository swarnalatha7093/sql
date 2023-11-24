insert into zomato.countries(sno, name, location, pin)
values (1,'swarna','stpuram', 506780);
select * from zomato.countries;
update zomato.countries set pin=500000 where name='swarna';
delete from zomato.countries where sno = 1;

