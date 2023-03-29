insert into receipt_status (status_name) values ('Waiting');
insert into receipt_status (status_name) values ('Refunded');								-- receipt_status 
insert into receipt_status (status_name) values ('Canceled');



insert into shop_category (category_name) values ('Market');
insert into shop_category (category_name) values ('Transport');
insert into shop_category (category_name) values ('Restaurants');
insert into shop_category (category_name) values ('Clothing stores');
insert into shop_category (category_name) values ('Charity');
insert into shop_category (category_name) values ('Others');

insert into register (first_name,last_name,email,password) values ('Ibrahim','Rzabekov','ibrahim.rzabekov2002@gmail.com','qwerty123');
insert into register (first_name,last_name,email,password) values ('Ilham','Aliyev','ilhamaliyev91@gmail.com','qwerty1234');


insert into receipt (used_id,shop_name,category_id,receipt_fiskal,total_price,receipt_refundable_vat,receipt_date,receipt_status_id,receipt_scan_status_id) values (1,'BRAVO',1,'fsahsafaf15g',50.26,2.6,current_timestamp,2,1);
insert into receipt (used_id,shop_name,category_id,receipt_fiskal,total_price,receipt_refundable_vat,receipt_date,receipt_status_id,receipt_scan_status_id) values (1,'BRAVO',1,'dsafsfasfas1',100,10,current_timestamp,2,1);
insert into receipt (used_id,shop_name,category_id,receipt_fiskal,total_price,receipt_refundable_vat,receipt_date,receipt_status_id,receipt_scan_status_id) values (1,'BRAVO',1,'fsfasfasfa10',50,30,current_timestamp,1,1);
insert into receipt (used_id,shop_name,category_id,receipt_fiskal,total_price,receipt_refundable_vat,receipt_date,receipt_status_id,receipt_scan_status_id) values (2,'BRAVO',1,'safsafasfaw',50,30,current_timestamp,3,1);
insert into receipt (used_id,shop_name,category_id,receipt_fiskal,total_price,receipt_refundable_vat,receipt_date,receipt_status_id,receipt_scan_status_id) values (2,'OBA',1,'446FAFsfaf',50,30,current_timestamp,2,2);
insert into receipt (used_id,shop_name,category_id,receipt_fiskal,total_price,receipt_refundable_vat,receipt_date,receipt_status_id,receipt_scan_status_id) values (2,'BAZARSTORE',1,'sfsaf569A',50,30,current_timestamp,2,2);
insert into receipt (used_id,shop_name,category_id,receipt_fiskal,total_price,receipt_refundable_vat,receipt_date,receipt_status_id,receipt_scan_status_id) values (2,'BRAVO',1,'utrgnksJH2',50,30,current_timestamp,2,1);
insert into receipt (used_id,shop_name,category_id,receipt_fiskal,total_price,receipt_refundable_vat,receipt_date,receipt_status_id,receipt_scan_status_id) values (2,'HYPERX',1,'sfsaf656fJH2',50,30,current_timestamp,2,1);


insert into receipt_scan  values (0,'Scanned');
insert into receipt_scan  values (1'Not Scanned');

select * from receipt_status;
select * from receipt;
select * from shop_category;
select * from register;
select * from bonus_card; -- card name - user id 
select * from rc_bonus;
select * from receipt_scan;  -- 0 ve 1
select * from bonus_card;
select * from supermarket_card;



insert into rc_bonus (user_id,rc_bonus) values (1,(select count(used_id)*5 as rc_bonus from receipt where used_id = 1));
insert into rc_bonus (user_id,rc_bonus) values (2,(select count(used_id)*5 as rc_bonus from receipt where used_id = 2));



