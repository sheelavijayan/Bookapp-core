create table book(id int primary key auto_increment,
 name varchar(50) not null,
 price int not null,
 published_date date not null);
 
 insert into book values(11,'java',400,'2016-12-31');
 
 insert into book(name,price,published_date) values('c++',400,'2016-02-21');
 
insert into book(name,price,published_date) values('c',300,'2016-03-22');
 select *from book;
 select now();
select current_date(); 
