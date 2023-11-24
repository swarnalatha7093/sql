insert into zomato.products(id, name, details, item, qrcode)
values (1,'swarna','natural', 'facepack', 123456);
select * from zomato.products;
update zomato.products set qrcode=500000 where name='swarna';
delete from zomato.products where id = 1;

