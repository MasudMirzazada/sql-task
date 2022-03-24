create database Academy
create table Groups(
Id int primary key identity,
Name nvarchar(50) unique 
)
create table Students(
Id int primary key identity,
GroupId int references Groups(Id)   ,
Name nvarchar (50),
Surname nvarchar (50)
)
alter table Students  add Grade int

SELECT * from Students
insert into Students(Name,Surname,GroupId,Grade)  values ('Mesud', 'Mirzezade',1,50)
insert into Students(name,surname,GroupId,Grade)  values ('Mayil', 'Kerimov',1,80)
insert into Students(name,surname,GroupId,Grade)  values ('David', 'Namazov',1,90)
insert into Students(name,surname,GroupId,Grade)  values ('Altan', 'Ibrahimli',3,90)

select * from Students where GroupId=1
 
 Select * From Students inner  join Groups g on g.Id=GroupId where g.Name='P224'
select g.Name, Count(GroupId) as [Say] from Students inner  join Groups g on g.Id=GroupId group by g.Name

CREATE VIEW StudentView AS
SELECT  name,Grade,Surname
FROM  Students
select  * from  StudentView
 
 CREATE PROCEDURE  Student_pro
AS
select * from Students where (Grade>50);
exec Student_pro;

SELECT COUNT(name)
FROM  Students
where(GroupId=1)
 
