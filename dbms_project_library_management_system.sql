/*
project created by:-
1.Agrim Aswal    
2.Modassir Alam        1000015211 
3.Sankha Subhra Aich   1000013899
4.Swatika Chandra      1000014143
*/   


create database library_management_system;
use library_management_system;

create table student_details(
student_id int,
roll_no int not null,
s_name varchar(100) not null,
fine_amount_if_any int, 
primary key(student_id)
);
desc student_details;

insert into student_details values
(1000017589,200102445,'Sankha Subhra Aich',null),
(1000012563,200109999,'Lavanya ',100),
(1000017777,200107878,'Prashant Mishra',null),
(1000013966,200102459,'Manya Shuklha',68),
(1000013211,200109336,'Sheik Zufisa',null),
(1000011142,200101255,'Rishi Dwivedi',null),
(1000011010,200103012,'Shashank Singh',null),
(1000012582,200101996,'Aayush Verma',null),
(1000012379,200107777,'Aayushi Kaushik',null),
(1000017195,200103696,'Kushagra Nigam',null),
(1000013030,200107849,'Neeharika Jugran',null),
(1000013971,200101997,'Shaikh Zardar',null),
(1000011994,200101224,'Saif Abbasi',122),
(1000013897,200107931,'Hamza',null),
(1000012132,200102000,'Tanishq Singh',null),
(1000015663,200103771,'Swatika Chandra',null),
(1000017410,200101224,'Agrim Aswal',null),
(1000019637,200102468,'Modassir Alam',null),
(1000011983,200101997,'Avik Narjinary',400),
(1000019987,200103014,'Susamay Debmath',null);

select * from student_details;

create table book_details(
book_id int,
book_name varchar(100) not null,
author varchar(100) not null,
publication varchar(100) not null,
price int not null,
primary key(book_id)
);
desc book_details;

insert into book_details values
(89223,'Physics','H.C.Verma','pearson',400),
(85283,'Inroduction to java','Y.Liang','ABC',600),
(75589,'Organic Chemistry','M.Mohan','Schand',750),
(15362,'Prgramming with Python','Sumita Arora','Jaico',400),
(96636,'fluid Mechanics','Rupi Kaur','pearson',450),
(89783,'theory of machines','Nikita Gill','Penguine',380),
(10236,'Strength of materials','Preeti Arora','Jaico',800),
(79669,'Professional Communication','Arunoday Singh','Bloomsbury',300),
(30232,'English litrature','Pratistha Khattar','pearson',990),
(97636,'Geetanjali','Rabindranath Tagore','Penguine',12000),
(75759,'Quantum physics','Khawaja Musadiq','Bloomsbury',400),
(87787,'Networking in java','Afik Kichloo','pearson',650),
(96336,'Python Django','Medha Sharma','Jaico',900),
(12232,'html for bginners','Pavanna Reddy','ABC',700),
(89222,'Material chemistry','Isha yadav','ABC',190),
(11787,'Harmonic Motion','Abhishek chaudhary','pearson',360),
(52001,'Wave optics','harnidh kaur','Bloomsbury',880),
(90371,'english essays','Lisa Ray','Jaico',700),
(73945,'Simple litrature','Anveshi Jain','Bloomsbury',200),
(12578,'Probability','R.D.Sharma','pearson',370);

select * from book_details;

create table issue_details(
issue_no int,
student_id int not null,
book_id int not null,
issue_date date not null,
return_date date,
primary key(issue_no),
foreign key(book_id) references book_details(book_id),
foreign key(student_id) references student_details(student_id)
);
desc issue_details;

insert into issue_details values
(101,1000017777,75589,'2022-01-12','2022-01-20'),
(102,1000011142,15362,'2022-01-15','2022-01-19'),
(103,1000017589,52001,'2022-01-22','2022-01-30'),
(104,1000012379,90371,'2022-01-22','2022-02-06'),
(105,1000011994,12578,'2022-01-22','2022-01-31'),
(106,1000017410,73945,'2022-01-30','2022-02-19'),
(107,1000019987,85283,'2022-02-01','2022-02-10'),
(108,1000011983,89223,'2022-02-05',null),
(109,1000012563,30232,'2022-03-31','2022-04-15'),
(110,1000013966,96636,'2022-04-05','2022-04-10'),
(111,1000017777,75759,'2022-04-07','2022-04-10'),
(112,1000019987,75589,'2022-04-07',null),
(113,1000017777,89223,'2022-04-10','2022-04-15'),
(114,1000019987,12578,'2022-04-12',null),
(115,1000011994,15362,'2022-04-15',null);

select * from issue_details;

