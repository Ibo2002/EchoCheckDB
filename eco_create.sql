create table receipt (
receipt_id int generated always as identity not null,
used_id int not null,
shop_name varchar(50),
category_id int,
receipt_fiskal varchar(12) unique,
total_price float,
receipt_refundable_VAT float,
receipt_date timestamp,
receipt_status_id int,
receipt_scan_status_id int,
																														--receipt
constraint receipt_id_pk primary key (receipt_id),
constraint receipt_status_fk foreign key(receipt_status_id) references receipt_status(status_id),
constraint used_id_fk foreign key (used_id) references register(user_id),
constraint category_id_fk foreign key (category_id) references shop_category(category_id),
constraint receipt_scan_status_id_fk foreign key (receipt_scan_status_id) references receipt_scan (receipt_scan_status_id)
);


create table receipt_status (
status_id int generated always as identity not null,
status_name varchar(8) unique,             														-- receipt status

constraint status_id_pk primary key (status_id)
);



create table shop_category (
category_id int generated always as identity not null,
category_name varchar(20) unique,													-- shop_category 

constraint category_id_pk primary key (category_id)
);


create table register (
user_id int generated always as identity not null,
first_name varchar (50),
last_name varchar (50),
phone_number varchar (25) unique,														-- register

constraint user_id_pk primary key (user_id)
);

create table bonus_card (
bonus_card_id int generated always as identity not null,
user_id int,
supermarket_card_id int,
user_phone_number varchar(25) not null,
bonus_card_number varchar(16) unique not null,
bonus_card_balance float,


constraint bonus_card_id_pk primary key (bonus_card_id),
constraint user_id_fk foreign key (user_id) references register (user_id),
constraint card_id_fk foreign key (supermarket_card_id) references supermarket_card (card_id)
);



create table RC_bonus (
rc_bonus_id int generated always as identity not null,
user_id int not null,
rc_bonus_number varchar(16) not null,
rc_bonus float,

constraint user_id_fk foreign key (user_id) references register(user_id)
);

create table receipt_scan (
receipt_scan_status_id int not null, 
receipt_scan_status varchar(20) unique,

constraint receipt_scan_status_id_pk primary key (receipt_scan_status_id)
);

create table supermarket_card (
card_id int generated always as identity not null,
supermarket_name varchar(15) unique not null,

constraint card_id_pk primary key (card_id)
)


drop table receipt;
drop table receipt_status ;
drop table shop_category ;
drop table register ;
drop table rc_bonus;
drop table receipt_scan ;
drop table bonus_card;
drop table supermarket_card ;




