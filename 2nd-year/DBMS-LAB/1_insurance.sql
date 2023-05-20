create database insurance062;
use insurance062;
show tables;


create table person(driver_id varchar(20),address varchar(20), primary key(driver_id));
create table car(regno varchar(20),model varchar(20),year int, primary key(regno));
create table accident(report_no varchar(20),date date,location varchar(30), primary key(report_no));
create table owns(driver_id varchar(20),regno varchar(20),
 primary key(driver_id,regno) ,foreign key(driver_id) references person(driver_id),
 foreign key(regno) references car(regno));
create table participated(driver_id varchar(20),
regno varchar(20),report_no varchar(20),damage_amt int,
 primary key(driver_id,regno,report_no) ,foreign key(driver_id,regno) references owns(driver_id,regno) on delete cascade,
 foreign key(report_no) references accident(report_no) on delete cascade);


alter table person add column name varchar(30);
desc person;


insert into person values('101','basvangudi','shivraj');
insert into person values('102','banashankare','prithvi');
insert into person values('103','arekere','raghav');
insert into person values('104','j p nagar','srikanth');
insert into person values('105','arekere','sunil');


insert into car values('KA01JS1212','MARUTHI','2000');
insert into car values('KA01JS2323','ZEN','2002');
insert into car values('KA01JS3434','INDICA','2000');
insert into car values('KA01JS4545','zen','2001');
insert into car values('KA01JS5656','tata','2011');


insert into accident values('23','20060329','chamrajpet');
insert into accident values('26','20120912','hrs layout');
insert into accident values('28','20081107','jegani');
insert into accident values('25','20201212','dinne');
insert into accident values('20','20201212','dinne');


insert into owns values('101','KA01JS1212');
insert into owns values('102','KA01JS2323');
insert into owns values('103','KA01JS3434');
insert into owns values('103','KA01JS4545');
insert into owns values('103','KA01JS5656');


insert into participated values('101','KA01JS1212','23',2090);
insert into participated values('102','KA01JS2323','26',100);
insert into participated values('103','KA01JS3434','28',580);
insert into participated values('103','KA01JS4545','23',100);
insert into participated values('103','KA01JS5656','20',450);
insert into participated values('103','KA01JS4545','25',250);

commit;
select * from person;
select * from car;
select * from accident;
select * from owns;
select * from participated;

update participated set damage_amt=1000 where regno='KA01JS3434' and report_no='28' ;

insert into accident values('29','20101117','jayanagar');

select count(date) from accident where year(date)='2020';

select count(report_no),regno from participated group by regno ;
