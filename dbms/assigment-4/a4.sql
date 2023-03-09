--createing table Clientmaster :-------------------------------------------------------------------------------------------------
create table Clientmaster (
	Clientno varchar (4),
	Name varchar (20),
	City varchar (20),
	Pincode number,
	State varchar (20), 
	Bal_due number
);

--data input of the table Clientmaster :
insert into Clientmaster values ('0001', 'Ivan', 'Bombay', 400054, 'Maharastra', 15000);
insert into Clientmaster values ('0002', 'Vandana', 'Madras', 780001, 'Tamilnadu', 0);
insert into Clientmaster values ('0003', 'Pramada', 'Bombay', 400057, 'Maharastra', 5000);
insert into Clientmaster values ('0004', 'Basu', 'Bombay', 400056, 'Maharastra', 0);
insert into Clientmaster values ('0005', 'Ravi', 'Delhi', 100001, '', 2000);

--createing table Salesorder :-----------------------------------------------------------------------------------------------------
create table Salesorder (
	S_orderno varchar (7), 
	S_orderdate date, 
	Clientno varchar (5), 
	Delytype varchar (2), 
	Bill varchar (2), 
	Salesmanno number, 
	Delaydate date, 
	Orderstatus varchar (2)
);

--data input of the table Salesorder :
insert into Salesorder values ('019001', to_date('12-JAN-96'), '0001', 'F', 'N', 50001, to_date('20-JAN-96'), 'Ip');
insert into Salesorder values ('019002', to_date('25-JAN-96'), '0002', 'P', 'N', 50002, to_date('27-JAN-96'), 'C');
insert into Salesorder values ('016865', to_date('18-FEB-96'), '0003', 'F', 'Y', 500003, to_date('20-FEB-96'), 'F');
insert into Salesorder values ('019003', to_date('03-APR-96'), '0001', 'F', 'Y', 500001, to_date('07-APR-96'), 'F');

--createing table Sales_order_details :----------------------------------------------------------------------------------------------
	create table Sales_order_details (
	S_orderno varchar (20),
	Productno varchar (20),
	Qtyordered number,
	Qtydisp number,
	Product_rate number
);

--data input of the table Sales_order_details :
insert into Sales_order_details values ('019001','P00001',4,4,525);
insert into Sales_order_details values ('019001','P07965',2,1,8400);
insert into Sales_order_details values ('019002','P00001',10,0,525);
insert into Sales_order_details values ('046865','P07868',3,3,3150);
insert into Sales_order_details values ('046865','P07885',10,10,5250);

--createing table Challan_header :---------------------------------------------------------------------------------------------------
create table Challan_header (
	ChallanNo varchar (20),
	S_orderNo varchar (20),
	ChallanDate date,
	Billed varchar (20)
);

--data input of the table Challan_header :
insert into Challan_header values('CH9001','019001',to_date('12-DEC-95'),'Y');
insert into Challan_header values('CH865','046865',to_date('12-NOV-95'),'Y');
insert into Challan_header values('CH3965','010008',to_date('12-OCT-95'),'Y');

--createing table Salesman_master :--------------------------------------------------------------------------------------------------
create table Salesman_master (
	Salesman_no number,
	Salesmanname varchar(20),
	Address varchar(20),
	City varchar(20),
	Pincode number,
	State varchar(20),
	Salamt number,
	Tgt_to_get number,
	YtdSales number,
	Remarks varchar (20)
);

--data input of the table Salesman_master :
insert into Salesman_master values(500001,'Kiran','A/14 worli','Bombay',400002,'Maharastra',3000,100,50,'Good');
insert into Salesman_master values(500002,'Manish','65,nari man','Bombay',400001,'Maharastra',3000,200,100,'Good');
insert into Salesman_master values(500003,'Ravi','P-7 Bandra','Bombay',400032,'Maharastra',3000,200,100,'Good');
insert into Salesman_master values(500004,'Ashish','A/5 Juhu','Bombay',400044,'Maharastra',3500,200,150,'Good');


-- SQL quries:-----------------------------------------------------------------------------------------------------------------------
-- 1. Create an index on the table client_master, field clientno.
create index index_clientmaster on Clientmaster (Clientno);
-- 2. Create an index on the sales_order, field s_order_no.
create index index_salesorder on Salesorder (S_orderno);
-- 3. Create a composite index on the sales_order_details table for the columns s_order_no and product_no.
create index index_sales_order_details on Sales_order_details (S_orderno, Productno);
-- 4. Create a composite index ch_index on challan_header table for the columns challan no and s_order_no.
create index ch_index on Challan_header (ChallanNo, S_orderNo);
-- 5. Create a unique index on the table salesman_master, field salesman_no.
create unique index index_salesman_master on Salesman_master (Salesman_no);
-- 6. Drop index ch_index on table challan_header.
drop index ch_index;
-- 7. Create view on salesman_master whose sal_amt is less than 3500.
create view sal_amtLessThan3500 as
select * from Salesman_master
where Salamt < 3500;
-- 8. Create a view client_view on client_master and rename the columns as name, city, pcode, state respectively.
create view client_view as
select Name as name, City as city, Pincode as pcode, State as state from Clientmaster;
-- 9. Select the client names from client_view who lives in city ‘Bombay’.
select name from client_view where city='Bombay';
-- 10. Drop the view client_view.
drop view client_view;
-- 11. Create sequence inv_seq with the following parameters, increment by 3, cycle, cache 4 and which will generate numbers from 1 to 9999 in ascending order.
create sequence inv_seq
start with 1
increment by 3
minvalue 1
maxvalue 9999
cycle
cache 4;
-- 12. Give another name for Sales_order_details table.
alter table Sales_order_details rename to new_sales_order_details;