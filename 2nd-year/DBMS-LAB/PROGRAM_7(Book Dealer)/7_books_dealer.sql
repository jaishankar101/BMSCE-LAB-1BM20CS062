create database book_dealer_062;
use book_dealer_062;

create table author(author_id int primary key,name varchar(50),city varchar(50),country varchar(50));
create table publisher(publisher_id int primary key,name varchar(50),city varchar(50),country varchar(50));
create table category(category_id int primary key,description varchar(255));
create table catalog(book_id int primary key,title varchar(50),author_id int,publisher_id int ,
	category_id int,year int,price int ,foreign key(author_id) references author(author_id),
		foreign key(publisher_id) references publisher(publisher_id),foreign key(category_id) 
			references category(category_id));
create table order_details(order_no int primary key,book_id int ,quantity int);
drop table order_details;

show tables;

insert into author values(1,"shankar","bangalore","India");

insert into publisher values(11,"jk publications","bangalore","India");
insert into publisher values(22,"pk publications","mangalore","India");

insert into category values(111,"romance");

insert into catalog values(1111,"Pride & Prejudge",1,11,111,2002,5000);
insert into catalog values(2222,"Titanic",1,22,111,2001,3000);

insert into order_details values(11111,1111,5);

-- query(1)
select A.* from author A,catalog C where A.author_id=C.author_id  and C.year>=2000 and C.price>2000 and count(C.book_id)>1;