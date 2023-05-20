create database order_process062;
use order_process062;

create table customer(cust int primary key,cname varchar(30),city varchar(30));
create table order_details(order_id int,odate date,cust int,ord_amt int,primary key(order_id,cust),foreign key(cust) references customer(cust));
create table item(item int primary key,unit_price int not null);
create table order_item(order_id int,item int,qty int,primary key(order_id,item),foreign key(order_id) references order_details(order_id),foreign key(item) references item(item));
create table warehouse(warehouse int primary key,city varchar(30));
create table shipment(order_id int,warehouse int,ship_date date,primary key(order_id,warehouse),foreign key(order_id) references order_details(order_id),foreign key(warehouse) references warehouse(warehouse));
show tables;
desc order_details;
drop table order_detailes;
insert into customer values(1,"jai","bangalore");
insert into customer values(2,"suresh","bangalore");
insert into customer values(3,"nagesh","mandya");
insert into customer values(4,"naresh","tumkur");
insert into customer values(5,"manjesh","mangalore");


insert into order_details values(11,"2022-07-20",1,2100);
insert into order_details values(22,"2022-06-21",1,300);
insert into order_details values(33,"2022-06-26",2,500);
insert into order_details values(44,"2022-07-10",3,6100);
insert into order_details values(55,"2022-07-04",4,2300);

insert into item values(111,200);
insert into item values(222,2000);
insert into item values(333,100);
insert into item values(444,300);
insert into item values(555,6100);
insert into item values(666,500);

insert into order_item values(11,222,1);
insert into order_item values(11,333,1);
insert into order_item values(22,444,1);
insert into order_item values(33,444,1);
insert into order_item values(33,111,1);
insert into order_item values(44,555,1);
insert into order_item values(55,666,4);
insert into order_item values(55,444,1);

insert into warehouse values(1111,"bangalore");
insert into warehouse values(2222,"mandya");
insert into warehouse values(3333,"tumkur");
insert into warehouse values(4444,"mangalore");
insert into warehouse values(5555,"mangalore");

insert into shipment values(11,1111,"2022-07-22");
insert into shipment values(11,2222,"2022-07-23");
insert into shipment values(22,3333,"2022-06-22");
insert into shipment values(33,4444,"2022-06-26");
insert into shipment values(44,4444,"2022-07-11");
insert into shipment values(55,1111,"2022-07-05");
insert into shipment values(55,5555,"2022-07-06");
commit;
select * from shipment;
-- query(1)
select C.cname ,count(O.order_id),sum(O.ord_amt),avg(O.ord_amt) from customer C,order_details O where O.cust=C.cust group by O.cust;

-- query(2)
select order_id from shipment S,warehouse W where S.warehouse=W.warehouse and W.city="mangalore";

-- query(3)
