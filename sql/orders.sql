use college2;

create table orders(id int primary key auto_increment,
user_id int,
 foreign key(user_id) references user(id),
book_id int,
  foreign key(book_id) references book(id),
  status varchar(50) not null,
  constraint status check(status in('ordered','cancelled','delivered')),
  quantity varchar(20));
  
alter table orders add(orders_date date);

update orders set user_id=4 where book_id=12;

insert into orders (user_id,book_id,status,quantity,orders_date)values(1,11,'ordered',2,'2017-12-24');
insert into orders (user_id,book_id,status,quantity,orders_date)values(2,12,'delivered',1,'2017-12-24');
insert into orders (user_id,book_id,status,quantity,orders_date)values(3,13,'ordered',2,'2017-12-24');

select *from orders;
update orders set status='cancelled' where id=1;
select * from orders where id=3;
select status from orders;
