create database Library_Management_System

use Library_Management_System

create table Users(
User_Id int identity(1,1) primary key not null,
Roles_ID int ,
Name varchar(20),
Degree_Program varchar(25),
Contact varchar(15),
Address varchar(500),
Year int
Foreign Key (Roles_ID) References Roles (Roles_ID)
)

drop table Users

select * from  Users

insert into [Users] values(1,  'Zainab',		'BSCS',  '03212121009',  'Garden',		2010)
insert into [Users] values(2,  'owais',			'BSCS',  '03001234567',  'safoora',		2010)
insert into [Users] values(1,  'shafiq',		'BSCS',  '03047654321',  'labour',		2010)
insert into [Users] values(2,  'farhan',		'BSCS',  '03321234567',  'labour',		2010)
insert into [Users] values(1,  'adnan',			'BSCS',  '03327654321',  'malir',		2010)
insert into [Users] values(2,  'Naeem',			'BSCS',  '03072100574',  'Malir',		2010)
insert into [Users] values(1,  'mubashar',		'BSCS',  '04327654321',  'korangi',		2010)
insert into [Users] values(1,  'rida',			'BBA',	 '03431234567',  'korangi',		2010)
insert into [Users] values(2,  'hina',			'BBA',   '03231233312',  'landhi',		2010)
insert into [Users] values(2,  'fatima',		'BBA',   '04447312345',  'korangi',		2011)
insert into [Users] values(2,  'Zainab Asif',	'BBA',   '03072100574',  'Garden',		2011)
insert into [Users] values(1,  'Zoya Abdullah', 'BBA',   '04327654321',  'Shahray',		2011)
insert into [Users] values(1,  'Zara Rehman',	'BBA',   '03431234567',  'Maleer',		2011) 
insert into [Users] values(1,  'Zarnain',		'BBA',   '03231233312',  'Model',		2011)
insert into [Users] values(1,  'Mehak Saeed',   'BSCS',  '04447312345',  'North',		2011) 
insert into [Users] values(1,  'Zarnaib Enam',  'BSCS',  '03001234567',  'Main',		2011)
insert into [Users] values(1,  'Umair Ahmed',   'BBA',   '03047654321',  'Maleer',		2011)
insert into [Users] values(1,  'Iqra Abdullah', 'BBA',   '03321234567',	 'Shahray',     2011)
insert into [Users] values(1,  'Soha Hassn',	'BBA',   '03327654321',  'Malir',		2011) 
insert into [Users] values(2,  'Yasir Mirza',	'BSCS',  '03072100574',  'Model',       2011) 

Delete from Users where Contact = '03001234567'
Delete from Users where Name = 'Yasir Mirza'
Delete from Users where Address = 'Garden'

update Users set Name = 'Khaled' where Contact ='03001234567'
update Users set Name = 'Nagy' where Contact ='04447312345'


select Name,Degree_Program,Contact,[Address],[Year] from [Users] where Roles_ID>1

select Name,[User_Id] from Users


--//Book Table

create table Books(
Book_Id int primary key identity,
Book_Serial_Num int,
Book_Name varchar(50),
Author_Name varchar(50),
Book_Edition varchar(100),
category_Id int
)

select * from Books

insert into Books values(101,  'English',     'shely',   '1st',   1)
insert into Books values(102,  'Islamiyat',    'sana',    '1st',   2)
insert into Books values(103,  'stats',     'imran',   '1st',   3)
insert into Books values(104,  'algebra',     'ali',    '1st',   4)
insert into Books values(105,  'calculus',     'qadrii',   '1st',   5)
insert into Books values(106,  'C++',      'ahmed',   '1st',   6)
insert into Books values(107,  'basic mangement',   'tahir',   '1st',   7)
insert into Books values(108,  'basic it',     'shafiq',   '1st',   8)
insert into Books values(109,  'aconmics',     'nawaz',   '1st',   9)
insert into Books values(110,  'accounting',    'jangir',   '1st',   10)
insert into Books values(111,  'computer graphics',  'tooba',   '2nd',   11)
insert into Books values(112,  'jawa',      'anwer',   '2nd',   12)
insert into Books values(113,  'urdu',      'owais',   '2nd',   13)
insert into Books values(114,  'OOPs',      'sheely',   '2nd',   14)
insert into Books values(115,  'networking',    'saddaf malik',  '2nd',   15)
insert into Books values(116,  'datawarehouse',   'idress',   '2nd',   16)
insert into Books values(117,  'operating system',   'adnan khan',  '2nd',   17)
insert into Books values(118,  'computer appliccation', 'adeeb ali',  '2nd',   18)
insert into Books values(119,  'pakistan studies',   'sana amir',  '2nd',   19)
insert into Books values(120,  'maths',     'junaid',   '2nd',   20)

Delete from Books where Book_Id = 119
Delete from Books where Author_Name = 'anwer'

update Books set Author_Name = 'Salma' where Book_Id = 114
update Books set Author_Name = 'Mina' where Book_Id = 111

select Books.Book_Serial_Num,
Books.Book_Name,
Books.Author_Name,
Books.Book_Edition,
users.Degree_Program,
category.Book_Category 
from Books 
inner join category on Books.category_Id=category.category_Id
inner join Users on Users.User_Id=category.category_Id 



DROP TABLE category

create table category (
category_Id int identity primary key,
Book_Category varchar(100)
)

select * from category

insert into category values('BSCS')
insert into category values('BSCS')
insert into category values('BSCS')
insert into category values('BSCS')
insert into category values('BSCS')
insert into category values('BSCS')
insert into category values('BSCS')
insert into category values('BBA')
insert into category values('BBA')
insert into category values('BBA')
insert into category values('BBA')
insert into category values('BBA')
insert into category values('BBA')
insert into category values('BBA')
insert into category values('BSCS')
insert into category values('BSCS')
insert into category values('BBA')
insert into category values('BBA')
insert into category values('BBA')
insert into category values('BSCS')
insert into category values('BSCS')




select Users.Stu_Id,Books.Book_Name,Books.Author_Name,Book_Issues.Date_Of_Issue,Date_Of_Return from Users inner join Book_Issues on Users.Stu_Id=Book_Issues.Stu_Id inner join Books on Books.Book_Id=Book_Issues.Book_Id

--//drop table Books




create table Book_Issues(
Bk_Issue_Id int identity primary key,
Date_Of_Issue date,
Date_Of_Return date,
Book_Id int,
[User_Id] int,
category_Id int,
Book_Status varchar(20)
)

--//drop table Book_Issues

select * from Book_Issues

--info of whole

select Users.[User_Name],Books.Book_Name,Book_Issues.Date_Of_Issue,Book_Issues.Date_Of_Return from Users inner join Book_Issues on Users.Stu_Id=Book_Issues.Stu_Id inner join Books on Books.Book_Id=Book_Issues.Book_Id inner join category on category.category_Id=Book_Issues.category_Id

create table Due_Date_Fee(
Due_Date_Fee_Id int identity primary key,
Fee_Amount int,
Book_Id int ,
Bk_Issue_Id int
)

drop table Due_Date_Fee

select * from Due_Date_Fee

select Books.Book_Name,Books.Author_Name,Book_Issues.Date_Of_Issue,Book_Issues.Date_Of_Return from Books inner join Due_Date_Fee on Books.Book_Id=Due_Date_Fee.Book_Id inner join Book_Issues on Book_Issues.Bk_Issue_Id=Due_Date_Fee.Bk_Issue_Id

insert into Due_Date_Fee values(1000,1,1),(1000,2,2),(1000,3,3)

Delete from Due_Date_Fee where Bk_Issue_Id = 3
update Due_Date_Fee set Bk_Issue_Id = 22 where Fee_Amount = 2

create table Roles(
Roles_ID int identity primary key,
Role_Name varchar(50)
)

drop table Roles

insert into Roles values ('Admin'),('Student'),('Faculty')


create table Stocks(
Stock_ID int primary key identity,
Stock int,
Book_id int
)

create table stock(
StockID int identity primary key,
Stock nvarchar(500),
Book_Id int
)



select Books.Book_Name,category.Book_Category,Stocks.Stock from Stocks inner join Books on Stocks.Book_id=Books.Book_id inner join category on Stocks.Stock_ID=category.category_Id

select * from Stocks

insert into Stocks values(1,1),(2,2),(3,3)

drop table Stocks

select Books.Book_Name,Books.Author_Name,Stocks.Stock from Books inner join Stocks on Stocks.Book_id=Books.Book_Id

drop table Stock

select  r.Role_Name,Name,Degree_Program,Contact,Address,Year from users u inner join Roles  r on r.Roles_ID = u.roles_id where u.roles_id>1

--///Join For Book_Issue Table

select Books.Book_Name,[Users].Name As'Student_Name',category.Book_Category,CONVERT(varchar,Book_Issues.Date_Of_Issue,103) as Issue_Date from Book_Issues inner join Books on Book_Issues.Book_Id=Books.Book_Id inner join category on category.category_Id=Book_Issues.category_Id inner join [Users] on [Users].[User_Id]=Book_Issues.[User_Id]


select * from Users 
select * from Book_Issues


Insert into Book_Issues  Values ('2010-02-08','2010-02-10',2,2,1,'True')
Insert into Book_Issues  Values ('2010-01-02','2010-01-10',2,2,3,'True')
Insert into Book_Issues  Values ('2010-03-03','2010-03-10',2,3,3,'True')
Insert into Book_Issues  Values ('2010-01-02','2010-01-10',2,2,3,'True')
Insert into Book_Issues  Values ('2010-04-02','2010-04-10',1,2,3,'True')
Insert into Book_Issues  Values ('2010-06-06','2010-06-12',2,2,3,'True')
Insert into Book_Issues  Values ('2010-03-02','2010-03-10',6,6,3,'True')
Insert into Book_Issues  Values ('2010-01-02','2010-01-10',4,4,3,'True')
Insert into Book_Issues  Values ('2010-01-02','2010-01-10',2,4,5,'True')
Insert into Book_Issues  Values ('2010-01-02','2010-01-10',6,6,6,'True')
Insert into Book_Issues  Values ('2011-01-02','2011-01-10',2,2,3,'True')
Insert into Book_Issues  Values ('2011-01-02','2011-01-10',2,2,3,'True')
Insert into Book_Issues  Values ('2011-01-02','2011-01-10',2,2,3,'True')
Insert into Book_Issues  Values ('2011-04-02','2011-04-10',1,2,3,'True')
Insert into Book_Issues  Values ('2011-06-06','2011-06-12',2,2,3,'True')
Insert into Book_Issues  Values ('2011-03-02','2011-03-10',6,6,3,'True')
Insert into Book_Issues  Values ('2011-01-02','2011-01-10',2,2,3,'True')
Insert into Book_Issues  Values ('2011-01-02','2011-01-10',2,2,3,'True')

Select * from Book_Issues
Select * from Books
Select * from category
Select * from Due_Date_Fee
Select * from Roles
Select * from Stocks
Select * from Users