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
select Sailors.sname from Reserves inner join Sailors on Reserves.sid = Sailors.sid where Reserves.bid=103;
select Sailors.sname from Reserves, Sailors where Reserves.sid = Sailors.sid and Reserves.bid=103;
--4.

---- original code starts here -------
-- 1. Find the names and ages of all sailors
select sname, Age from Sailors;
-- 2. Find all sailors with a rating above 7
select * from Sailors where rating>7;
-- 3. Find the names of sailors who have reserved boat number 103
select Sailors.sname from Reserves, Sailors where Reserves.sid = Sailors.sid and Reserves.bid=103;
-- 4. Find the sid’s of sailors who have reserved a red boat
SELECT Reserves.sid FROM Boats, Reserves WHERE Reserves.bid = Boats.bid AND Boats.color = 'red';
-- 5. Find the names of sailors who have reserved a red boat
SELECT Sailors.sname FROM Boats, Reserves, Sailors WHERE Reserves.bid = Boats.bid AND Boats.color = 'red' AND Reserves.sid = Sailors.sid;
-- 6. Find the colors of boats reserved by lokesh
SELECT Boats.color FROM Boats, Reserves, Sailors WHERE Reserves.bid = Boats.bid AND Reserves.sid = Sailors.sid AND Sailors.sname = 'lokesh';
-- 7. Find the names of sailors who have reserved at least one boat
SELECT Sailors.sname FROM Reserves, Sailors WHERE Reserves.sid = Sailors.sid;
-- 8. Find the name and age of sailors whose name begin with ‘b’ and ends with ‘y’ and has at least three characters.
SELECT sname, age FROM Sailors WHERE sname like 'b%y';
------------------------- UNION, INTERSECT, MINUS
-- 9. Find the names of sailors who have reserved a red or a green boat
-- 10. Find the names of sailors who have reserved both a red and a green boat
-- 11. Find the sid’s of all sailors who have reserved red boats but not green boats
-- 12. Find all sid’s of sailors who have a rating of 10 or reserved boat 104
--------------------------- NESTED QUERIES: ------------------------------------------
-- 13. Find the names of sailors who have reserved boat 103
-- 14. Find the names of sailors who have reserved a red boat
------------------------ CORRELATED NESTED QUERIES:
-- 15. Find the names of sailors who have reserved boat number 103
--------------------------- SET COMPARISON OPERATORS:
-- 16. Find sailors whose rating is better than some sailor called hari
-- 17. Find the sailor with the highest rating
-- 18. Find the name of sailors who have reserved both a red and a green boat
-- 19. Find the names of sailors who have reserved all boats
---------------------------------- AGGREGATE OPERATORS:
-- 20. Find the average age of sailors with a rating of 10
-- 21. Find the name and age of the oldest sailor
-- 22. Count the number of sailors
-- 23. Count the number of different sailor names
-- 24. Find the names of sailors who are older than the oldest sailor with a rating of 10
---------------------------------------- GROUP BY CLAUSE:
-- 25. Find the age of the youngest sailor for each rating level
-- 26. Find the age of the youngest sailor who is eligible to vote(i.e., is at least 18 years old) for each rating level with at least two such sailors
-- 27. For each red boat find the number of reservations for this boat
-- 28. Find the average age of sailors for each rating level that has at least two sailors