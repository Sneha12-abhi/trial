use sneha;
create table customer(
customer_id int(10),
cust_name varchar(30),
city varchar(20),
grade int(4),
salesman_id int(5)
);
select * from customer;
insert into customer
values(3002,"Nick Rimando","New york",100,5001),
(3007,"Brad Davis", "New York" ,200, 5001),
(3005,"Graham Zusi","California",200,5002),
(3008,"Julian Green", "London",300,5002),
(3004,"Fabian Johnson", "Paris",300,5006),
(3009,"Geoff Cameron","Berlin",100,5003),
(3003,"Jozy Altidor","Moscow",200,5007),
(3001, "Brad Guzan" ,"London",200,5005);

create table salesman(
salesman_id int(10),
name varchar(30),
city varchar(20),
commission float(15)
);
select * from salesman;
insert into salesman values(5001,"James Hoog","New York",0.15),
(5002,"Nail Knite","Paris",0.13),
(5005,"Pit Alex","London",0.11),
(5006,"Mc Lyon","Paris",0.14),
(5007,"Paul Adam","Rome",0.13),
(5003,"Lauson Hen","San Jose",0.12);
use sneha;
select * from salesman;
select * from customer;
select customer.cust_name, customer.city, customer.grade from customer natural join salesman
where customer.salesman_id=salesman.salesman_id;
select *from salesman cross join customer where salesman.city is not null;
drop table sys_config;
create database itcomp;
use itcomp;
create table com_mast(
com_id int(10),
com_name varchar(40),
it_name varchar(50)
);