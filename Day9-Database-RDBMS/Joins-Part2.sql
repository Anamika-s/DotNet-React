create table batch(batchcode int primary key identity(101,1),
batchname varchar(10), startdate datetime)


create table student (rn int primary key identity,
name varchar(20), address varchar(50),
batchcode int references batch(batchcode))

insert into batch values('B001', '12/12/2023'),
('B002', '10/06/2023'),

('B003', '09/04/2024'),

('B004', '01/01/2023')

select * From batch


insert into student values('Ajay','Delhi',null),
('Deepak','New Delhi',101),
('Ravi','Delhi',101),
('Jatin','Delhi',102),
('Kanika','Delhi',102),
('Anshu','Delhi',102),
('Manav','Delhi',101)


select * From batch
select * From student

select rn , name , address , batchname , startdate 
from student join batch
on  student.batchcode = batch.batchcode

select student.rn , student.name , student.address , 
batch.batchname , batch.startdate 
from student join batch
on  student.batchcode = batch.batchcode

select s.rn , s.name , s.address , 
b.batchname , b.startdate 
from student s join batch b
on  s.batchcode = b.

select s.rn , s.name , s.address , 
b.batchname , b.startdate 
from student s left outer join batch b
on  s.batchcode = b.batchcode


select s.rn , s.name , s.address , 
b.batchname , b.startdate 
from student s right outer join batch b
on  s.batchcode = b.batchcode

select s.rn , s.name , s.address , 
b.batchname , b.startdate into sometable
from student s full outer join batch b
on  s.batchcode = b.batchcode

select * from sometable

-- self join
--  a table joins to itself

create table emp (id int primary key,
name varchar(20), managerid int references emp(id))

insert into emp values(1,'Ajay',null),
(2,'Deepak',1),
(3,'Sagar',2),
(4,'Manju',1),
(5,'Naveen',1),
(6,'Preeti',3)

select * from emp

-- display emp name alongwith their managername

update emp set managerid=6 where managerid is null
-- self join
select a.name as "Employee Name" , b.name as "Manager Name"
from Emp  join Emp 
on a.managerid = b.id


select a.name as "Employee Name" ,a.id, 
a.managerid, b.name as "Manager Name"
from Emp a join Emp b
on a.managerid = b.id

-- cross join -- Product of more than table
select *from student
select * from course
create table course (courseid int identity primary key, coursename varchar(20),
duration int)

insert into course values('C#', 10),
('Java', 12),
('ADO', 3),
('EF',   10)
select a.*, b.* from student a cross join course b
 
 







