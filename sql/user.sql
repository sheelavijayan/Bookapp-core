 create database college2;

 use college2;

 create table user(id int primary key auto_increment,
 name varchar(50) not null,
 email varchar(50) not null,
 password varchar(10) not null);

 insert into user values(1,'sheee','shee@gmail.com','ase');
  insert into user(name,email,password) values('she','she@gmail.com','as');

 insert into user(name,email,password) values('sh','sh@gmail.com','se');

 
 select * from user;

