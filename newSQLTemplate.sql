create database sms;
use sms;
create table admin(
username varchar(30),
password varchar(50),
user_id integer(30));
insert into admin values("Ketan Pandey","12345",01);
insert into admin values("Shiva Budhlakoti","12345",02);

drop table if exists teacher;
create table teacher(
id integer(10),
username varchar(30) ,
password varchar(50),
class_teacher varchar(30),
Subject varchar(50),
Doj date,
dob date,
gender varchar(10),
Address varchar(70),
Qualification varchar(50));


