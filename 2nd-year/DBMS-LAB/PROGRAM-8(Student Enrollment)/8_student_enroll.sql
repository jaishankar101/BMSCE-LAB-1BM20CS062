create database student_enroll_062;
use student_enroll_062;

create table student(regno varchar(50) primary key,name varchar(50),major varchar(50),bdate date);

create table course(course int primary key,cname varchar(50),dept varchar(50));

create table enroll(regno varchar(50) ,course int,sem int , marks int,primary key(regno,course),
	foreign key(course) references course(course),foreign key(regno) references student(regno));

create table text(book_ISBN int primary key,book_title varchar(50),publisher varchar(50),author varchar(50));

create table book_adoption(course int ,sem int,book_ISBN int,primary key(course,book_ISBN),foreign key(course) references course(course),foreign key(book_ISBN) references text(book_ISBN));
drop table book_adoption;
show tables;

insert into student values(1,"jai shankar","JR","2002-06-20");
delete from student where regno=1;

insert into course values(11,"DBMS","CSE");


insert into enroll values(1,11,4,90);


insert into text values(111,"pride & prejudge","jk pub","jk rowling");


insert into book_adoption values(11,4,111);

-- query(1)
insert into text values(111,"pride & prejudge","jk pub","jk rowling");

-- query(2)
select c.course,t.book_ISBN,t.book_title from course c,text t,book_adoption b where b.book_ISBN=t.book_ISBN 
	and b.course=c.course and c.dept="CSE" and 2<(select count(book_ISBN) from book_adoption b where b.course=c.course order by t.book_title); 
    
-- query(3)
select c.dept from course c where c.dept in (select c.dept from course c,book_adoption b,text t where c.course=b.course and 
	b.book_ISBN=t.book_ISBN and t.publisher="jk pub") and c.dept not in (select c.dept FROM from course c,book_adoption b,text t where
		c.course=b.course and t.book_ISBN=b.book_ISBN and t.publisher != "jk pub");
        
        
SELECT DISTINCT c.dept
     FROM course c
     WHERE c.dept IN
     ( SELECT c.dept
     FROM course c,book_adoption b,text t
     WHERE c.course=b.course
     AND t.book_ISBN=b.book_ISBN
     AND t.publisher='PEARSON')
     AND c.dept NOT IN
     (SELECT c.dept
     FROM course c,book_adoption b,text t
     WHERE c.course=b.course
     AND t.book_ISBN=b.book_ISBN
     AND t.publisher != 'PEARSON');