create database banking062;
use banking062;
show tables;

create table branch(branch_name varchar(30),branch_city varchar(30),assets varchar(20) ,primary key(branch_name));
create table accounts(acc_no int,branch_name varchar(30),balance float ,primary key(acc_no) ,foreign key(branch_name) references branch(branch_name));
create table depositor(costomer_name varchar(30),acc_no int,primary key(costomer_name,acc_no),foreign key(acc_no) references accounts(acc_no));
create table customer(costomer_name varchar(30),costomer_street varchar(30),costomer_city varchar(30),primary key(costomer_name),foreign key(costomer_name) references depositor(costomer_name));
create table loan(loan_no int ,branch_name varchar(30),amount float,primary key(loan_no),foreign key(branch_name) references branch(branch_name));
create table borrower(costomer_name varchar(30),loan_no int ,primary key(costomer_name,loan_no),foreign key(costomer_name) references depositor(costomer_name),foreign key(loan_no) references loan(loan_no));

drop table accounts;

insert into branch values("branch1","bangalore","10200");
insert into branch values("branch2","chennai","10000");
insert into branch values("branch3","hydrabad","20000");
insert into branch values("branch4","kochii","50000");
insert into branch values("branch5","mumbai","100000");

insert into accounts values(1,"branch1",867.6);
insert into accounts values(2,"branch1",9127.6);
insert into accounts values(3,"branch2",54247.6);
insert into accounts values(4,"branch3",54646);
insert into accounts values(5,"branch4",100233.6);
insert into accounts values(6,"branch4",935446);
insert into accounts values(7,"branch5",143536);

insert into depositor values("jai",1);
insert into depositor values("jai shankar",2);
insert into depositor values("srinivas",3);
insert into depositor values("sanvi",4);
insert into depositor values("suresh",5);

insert into customer values("jai","arekere","bangalore");
insert into customer values("jai shankar","jp nagar","bangalore");
insert into customer values("srinivas","che","chennai");
insert into customer values("sanvi","hyd","hydrabad");
insert into customer values("suresh","mum","mumbai");

insert into loan values(123,"branch1",10000);
insert into loan values(456,"branch2",100000);
insert into loan values(789,"branch3",1000);
insert into loan values(012,"branch4",4000);
insert into loan values(345,"branch5",50000);


insert into borrower values("jai",123);
insert into borrower values("srinivas",456);
insert into borrower values("sanvi",789);


select * from borrower;
select * from loan;
select * from accounts;
select * from customer;
select * from branch;


