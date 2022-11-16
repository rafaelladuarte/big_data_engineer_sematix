use sakila;
DROP TABLE IF EXISTS cp_rental_append, cp_rental_date, cp_rental_id;
create table cp_rental_append select rental_id, rental_date from rental;
create table cp_rental_date select * from cp_rental_append;
create table cp_rental_id select * from cp_rental_date;

insert into cp_rental_date values(16048,'2005-08-23 22:30:00');
insert into cp_rental_date values(16049,'2005-08-23 22:40:00');
insert into cp_rental_date values(16050,'2005-08-23 22:52:50');
insert into cp_rental_date values(16051,'2005-08-23 22:54:30');
insert into cp_rental_date values(16052,'2005-08-23 22:55:20');
insert into cp_rental_date values(16054,'2005-08-23 22:57:40');
insert into cp_rental_date values(16053,'2005-08-23 22:56:10');
insert into cp_rental_date values(16055,'2005-08-23 22:59:20');

insert into cp_rental_id values(16048,'2005-08-23 22:30:00');
insert into cp_rental_id values(16049,'2005-08-23 22:40:00');
insert into cp_rental_id values(16050,'2005-08-23 22:52:50');
insert into cp_rental_id values(16051,'2005-08-23 22:54:30');
insert into cp_rental_id values(16052,'2005-08-23 22:55:20');
insert into cp_rental_id values(16054,'2005-08-23 22:57:40');
insert into cp_rental_id values(16053,'2005-08-23 22:56:10');
insert into cp_rental_id values(16055,'2005-08-23 22:59:20');

select * from cp_rental_date ORDER By cp_rental_date DESC limit 10;

select * from cp_rental_id ORDER By cp_rental_date DESC limit 10;
