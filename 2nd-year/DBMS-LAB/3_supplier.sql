create database supplier062;
use supplier062;
show tables;


create table suppliers(sid varchar(10),sname varchar(40),address varchar(100) ,primary key(sid));
create table parts(pid varchar(10),pname varchar(40),color varchar(100) ,primary key(pid));
create table catalog(sid varchar(10),pid varchar(10),cost float ,primary key(sid,pid),foreign key(sid) references suppliers(sid)  on update cascade,foreign key(pid) references parts(pid) on update cascade);

insert into suppliers values("s1","jai shankar","arekere bangalore-76");
insert into suppliers values("s2","ryan","hulimav bangalore-71");
insert into suppliers values("s3","amarnath","jp nagar bangalore-67");
insert into suppliers values("s4","hruthik","chamrajpet bangalore-45");


drop table suppliers;


insert into parts values("p1","bumper","black");
insert into parts values("p2","engine","blue");
insert into parts values("p3","battery","red");
insert into parts values("p4","head lights","yellow");
insert into parts values("p5","doors","violet");
insert into parts values("p6","seats","brown");
-- insert into parts values("p1","tyers","black");

insert into catalog values("s1","p1",23000.45);
insert into catalog values("s1","p2",10000.70);
insert into catalog values("s1","p3",12300);
insert into catalog values("s1","p4",2300);
insert into catalog values("s1","p5",15000.70);
insert into catalog values("s1","p6",1000.70);
insert into catalog values("s2","p3",12300);
insert into catalog values("s3","p4",2300);
commit;
-- query(1)
select pname from parts p,catalog c where p.pid=c.pid group by pname;

-- query(2)
select s.sname from suppliers s ,catalog c,parts p group by c.sid where p.count(*) =c.count(sid);