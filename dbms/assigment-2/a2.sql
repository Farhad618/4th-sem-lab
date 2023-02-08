CREATE TABLE Emp (
	Empno int(4),
	Ename varchar(20),
	Job varchar(20),
	Mgr int(4),
	Hiredate date,
	Sal decimal(10,2),
	Comm decimal(8,2),
	Deptno int(2)
);

CREATE TABLE Dept(
Deptno NUMBER (2),
Dname VARCHAR (20),
Loc VARCHAR (20)
);

INSERT INTO Emp VALUES (7650, 'JAMES', 'MANAGER', 7652, '12-DEC-1998', 50000, 1000, 30);
INSERT INTO Emp VALUES (7651, 'SCOTT', 'CLERK', 7656, '11-APR-1990', 13000, 400, 20);
INSERT INTO Emp VALUES (7652, 'JHON', 'CLERK', null, '23-MAR-1997', 4000, 300, 30);
INSERT INTO Emp VALUES (7653, 'STEPHEN', 'CLERK', 7652, '13-MAR-2002', 3600, 1201, 10);
INSERT INTO Emp VALUES (7654, 'SAM', 'ANALYST', 7657, '8-SEP-2005', 23000, 300, 10);
INSERT INTO Emp VALUES (7655, 'BOB', 'ANALYST', null, '13-MAY-2004', 28000, 700, 20);
INSERT INTO Emp VALUES (7656, 'WILLIAM', 'MANAGER', 7657, '13-MAR-2002', 40000, 1200, 30);
INSERT INTO Emp VALUES (7657, 'TOVE', 'CLERK', null, '8-SEP-2005', 3000, 300, 20);


INSERT INTO Dept VALUES (10, 'SALES', 'DALLAS');
INSERT INTO Dept VALUES (20, 'MARKETING', 'NEW YORK');
INSERT INTO Dept VALUES (30, 'FINANCE', 'TEXAS');
INSERT INTO Dept VALUES (40, 'ADMINISTRATION', 'WASHINGTON');

ALTER TABLE Emp ADD PRIMARY KEY (Empno);

-- ALTER TABLE Emp ALTER Hiredata SET DEFAULT '1-JAN-1990';
-- as per maam see below
alter table Emp modify Hiredate default sysdate;

ALTER TABLE Emp ADD CONSTRAINT CHK_Sal CHECK (Sal>=5000);

ALTER TABLE Dept ADD PRIMARY KEY (Deptno);

ALTER TABLE Emp
ADD FOREIGN KEY (Deptno) REFERENCES Dept(Deptno);

ALTER TABLE Emp
DROP CONSTRAINT CHK_Sal;

-- 1.
SELECT * FROM Emp;

-- 2.
SELECT Sal FROM Emp;

-- 3.
SELECT DISTINCT Job FROM Emp;

-- 4.
select Ename, Sal + Sal * 0.5 as NewSal from Emp;

-- 5.
SELECT Ename || ' ' || Job AS "Employee and Job"
FROM Emp;

-- 6.
SELECT Ename || '(' || Job || ')' FROM Emp;

-- 7.
SELECT Ename,
       to_char(Hiredate,'MONTH DD,YYYY')
FROM Emp;

-- 8.
SELECT Ename, length(Ename)
FROM Emp;

-- 9.
SELECT Empno, Sal, Comm FROM Emp;

-- 10.
SELECT DISTINCT Deptno, Job FROM Emp;

------------------------------------------------------------------
-- following codes are not needed

CREATE TABLE Emp (
	Empno int(4),
	Ename varchar(20),
	Job varchar(20),
	Mgr int(4),
	Hiredata date,
	Sal decimal(10,2),
	Comm decimal(8,2),
	Deptno int(2)
);

CREATE TABLE Dept(
Deptno int (2),
Dname VARCHAR (20),
Loc VARCHAR (20)
);

INSERT INTO Emp VALUES (7650, 'JAMES', 'MANAGER', 7652, STR_TO_DATE('12,DEC,1998','%d,%M,%Y'), 50000, 1000, 30);
INSERT INTO Emp VALUES (7651, 'SCOTT', 'CLERK', 7656, STR_TO_DATE('11,APR,1990','%d,%M,%Y'), 13000, 400, 20);
INSERT INTO Emp VALUES (7652, 'JHON', 'CLERK', null, STR_TO_DATE('23,MAR,1997','%d,%M,%Y'), 4000, 300, 30);
INSERT INTO Emp VALUES (7653, 'STEPHEN', 'CLERK', 7652, STR_TO_DATE('13,MAR,2002','%d,%M,%Y'), 3600, 1201, 10);
INSERT INTO Emp VALUES (7654, 'SAM', 'ANALYST', 7657, STR_TO_DATE('8,SEP,2005','%d,%M,%Y'), 23000, 300, 10);
INSERT INTO Emp VALUES (7655, 'BOB', 'ANALYST', null, STR_TO_DATE('13,MAY,2004','%d,%M,%Y'), 28000, 700, 20);
INSERT INTO Emp VALUES (7656, 'WILLIAM', 'MANAGER', 7657, STR_TO_DATE('13,MAR,2002','%d,%M,%Y'), 40000, 1200, 30);
INSERT INTO Emp VALUES (7657, 'TOVE', 'CLERK', null, STR_TO_DATE('8,SEP,2005','%d,%M,%Y'), 3000, 300, 20);


INSERT INTO Dept VALUES (10, 'SALES', 'DALLAS');
INSERT INTO Dept VALUES (20, 'MARKETING', 'NEW YORK');
INSERT INTO Dept VALUES (30, 'FINANCE', 'TEXAS');
INSERT INTO Dept VALUES (40, 'ADMINISTRATION', 'WASHINGTON');

ALTER TABLE Emp ADD PRIMARY KEY (Empno);

ALTER TABLE Emp ALTER Hiredata SET DEFAULT '1990-12-1';
-- STR_TO_DATE('1,JAN,1990','%d,%M,%Y')
-- ALTER TABLE Emp ADD CONSTRAINT CHK_Sal CHECK (Sal>=5000);

ALTER TABLE Dept ADD PRIMARY KEY (Deptno);

ALTER TABLE Emp
ADD FOREIGN KEY (Deptno) REFERENCES Dept(Deptno);

-- ALTER TABLE Emp DROP CONSTRAINT CHK_Sal;

-- 1.
-- SELECT * FROM Emp;

-- 2.
-- SELECT Sal FROM Emp;

-- 3.
-- SELECT DISTINCT Job FROM Emp;

-- 4.

-- 5.
SELECT Ename + SPACE(1) + Job AS "Employee & Job" FROM Emp;

-- 6.
-- SELECT Ename || '(' || Job || ')' FROM Emp;

-- 7.
-- SELECT Ename,
--       to_char(Hiredata,'MONTH DD,YYYY')
-- FROM Emp;

-- 8.
-- SELECT Ename, length(Ename) FROM Emp;

-- 9.
-- SELECT Empno, Sal, Comm FROM Emp;

-- 10.
-- SELECT DISTINCT Deptno, Job FROM Emp;
