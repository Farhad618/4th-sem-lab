create table Sailors (
	sid number,
	sname varchar(20),
	rating number,
	age number(3,1)
);

create table Reserves (
	sid number,
	bid number,
	day date
);

create table Boats (
	bid number,
	bname varchar(20),
	Color varchar(10)
);

-- boat
insert into Boats values (101, 'interlake', 'blue');
insert into Boats values (102, 'interlake', 'red');
insert into Boats values (103, 'clipper', 'green');
insert into Boats values (104, 'marine', 'red');


-- reserves
insert into Reserves values (22, 101, '10-oct-98');
insert into Reserves values (22, 102, '10-oct-98');
insert into Reserves values (22, 103, '10-oct-98');
insert into Reserves values (22, 104, '10-jul-98');
insert into Reserves values (31, 102, '11-oct-98');
insert into Reserves values (31, 103, '11-jun-98');
insert into Reserves values (31, 104, '11-dec-98');
insert into Reserves values (64, 101, '9-may-98');
insert into Reserves values (64, 102, '9-aug-98');
insert into Reserves values (74, 103, '9-aug-98');

-- sailors
insert into Sailors values (22, 'dinesh', 7, 45.0);
insert into Sailors values (29, 'bramha', 1, 33.0);
insert into Sailors values (31, 'lokesh', 8, 55.5);
insert into Sailors values (32, 'akash', 8, 25.5);
insert into Sailors values (58, 'ramesh', 10, 35.0);
insert into Sailors values (64, 'hari', 7, 35.0);
insert into Sailors values (71, 'Mahesh', 10, 16.0);
insert into Sailors values (74, 'hari', 9, 35.0);
insert into Sailors values (85, 'abhi', 3, 25.5);
insert into Sailors values (95, 'boby', 3, 63.5);



--1.
select sname, Age from Sailors;
--2.
select * from Sailors where rating>7;
--3.
select Sailors.sname from Reserves
inner join Sailors on Reserves.sid = Sailors.sid where Reserves.bid=103;
--4.
