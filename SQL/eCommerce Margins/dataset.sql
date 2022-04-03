-- postgresql
-- create new schema and set it as default
create schema ecommerce_margins;
set search_path to ecommerce_margins, "$user", public;

-- use two lines below to remove schema
-- drop schema ecommerce_margins cascade;
-- reset search_path;

-- Run all these to create tables and populate data

-- create table for products
create table products (
    product_id int primary key
    , product_name varchar(100) not null
    , sku int
    , distributor_id int not null
);

-- create table for orders
create table orders (
    order_id serial primary key
    , date varchar(10)
    , user_id int
    , product_id int not null
    , no_units int not null
    , sell_price int not null
    , buy_price int not null
    , shipping_id int
    , region varchar(50)
    , foreign key (product_id) references products (product_id)
);


-- add dummy data
-- products
insert into products values (1, 'Indomie', 1001, 1);
insert into products values (2, 'Mie Sedaap', 1002, 1);
insert into products values (3, 'Sarimi', 1003, 1);
insert into products values (4, 'Mi Sukses', 1004, 2);
insert into products values (5, 'Pop Mie', 1005, 2);
insert into products values (6, 'Tomyam', 1006, 3);
insert into products values (7, 'Shin Ramyun', 1007, 4);
insert into products values (8, 'Samyang', 1008, 4);

-- orders
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-01', 614, 4, 74, 4500, 3500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-01', 804, 2, 97, 2500, 1500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-01', 464, 4, 90, 2700, 1000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-01', 979, 5, 76, 800, 1000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-01', 646, 3, 81, 500, 500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-01', 61, 4, 58, 2100, 500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-01', 604, 5, 21, 3500, 3000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-02', 483, 6, 21, 3700, 3500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-02', 707, 5, 16, 2200, 1000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-02', 451, 6, 71, 5800, 4000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-02', 777, 2, 98, 2000, 500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 350, 4, 68, 2900, 1000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 303, 3, 53, 4100, 4000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 454, 3, 27, 1700, 1000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 663, 6, 73, 2100, 2000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 219, 2, 57, 2600, 2000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 579, 5, 76, 5700, 4000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 622, 2, 26, 1500, 1500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 503, 4, 34, 2300, 500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 47, 3, 65, 2200, 500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 116, 4, 22, 2600, 1000, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 606, 2, 26, 3900, 3500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 983, 1, 56, 700, 1000, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 823, 6, 28, 3000, 2500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 345, 3, 3, 4000, 3000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-03', 832, 1, 20, 2500, 2500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-04', 780, 2, 87, 5200, 3500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-04', 406, 2, 35, 2800, 1000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-04', 302, 2, 98, 2500, 1000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-04', 534, 2, 8, 3600, 3500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-04', 634, 5, 43, 3700, 4000, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-04', 47, 5, 63, 1100, 500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-04', 926, 1, 54, 1200, 500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-05', 340, 5, 26, 2100, 1500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-05', 711, 1, 80, 3000, 1500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-05', 169, 2, 11, 4700, 3500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-05', 797, 2, 56, 3400, 2000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-05', 290, 1, 93, 4700, 4000, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-05', 849, 2, 36, 2600, 1500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-05', 560, 6, 32, 3000, 3000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 642, 5, 2, 3100, 2500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 316, 6, 85, 3200, 1500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 97, 6, 52, 4700, 3000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 268, 1, 44, 5700, 4000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 51, 6, 76, 2100, 2000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 558, 5, 68, 3500, 2500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 58, 6, 94, 1400, 1500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 6, 5, 73, 1400, 1500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 906, 6, 63, 4500, 4000, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 732, 1, 27, 4500, 2500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 208, 2, 24, 4700, 3500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 623, 5, 55, 2700, 2500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 50, 5, 15, 1900, 500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 859, 5, 61, 2400, 2500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 343, 1, 70, 4700, 3000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-06', 7, 3, 50, 1900, 2000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-07', 573, 1, 69, 1200, 1500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-07', 657, 2, 85, 2300, 1500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-07', 367, 1, 53, 1800, 2000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-07', 380, 4, 32, 3100, 3000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-07', 720, 2, 32, 3000, 2500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-07', 716, 6, 46, 2100, 500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-07', 168, 2, 26, 2700, 2000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-07', 469, 2, 56, 1600, 1500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-07', 787, 2, 50, 2000, 1000, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-07', 92, 3, 64, 5500, 3500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-07', 271, 4, 68, 2500, 1500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-07', 404, 2, 82, 2800, 2500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-07', 429, 2, 75, 3400, 2500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-08', 665, 4, 12, 400, 500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-08', 513, 6, 73, 3700, 2500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-08', 445, 5, 35, 3200, 3500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-08', 195, 3, 72, 2400, 1500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-09', 232, 6, 38, 2100, 1000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-09', 644, 3, 18, 2900, 1500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-09', 683, 5, 60, 2300, 2000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-09', 161, 3, 51, 3800, 2500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-09', 87, 5, 46, 4400, 3000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-09', 186, 6, 61, 3000, 1000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-09', 396, 6, 27, 3600, 3000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-09', 847, 4, 87, 1900, 500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-09', 545, 5, 54, 2200, 2500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-09', 558, 3, 25, 1400, 500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-09', 689, 5, 46, 1000, 500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-09', 48, 6, 74, 2700, 3000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-09', 865, 6, 84, 3300, 3000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-09', 287, 4, 12, 2400, 2000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-10', 230, 2, 37, 2800, 2000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-10', 269, 3, 49, 1800, 500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-10', 511, 1, 60, 4000, 3500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-10', 571, 3, 77, 3900, 2500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-10', 2, 1, 13, 5100, 3500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-10', 165, 5, 56, 1800, 2000, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-10', 115, 3, 34, 1000, 1000, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-10', 851, 6, 25, 5900, 4000, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-10', 685, 6, 88, 3800, 4000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-10', 459, 2, 15, 3900, 3500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-10', 204, 4, 12, 1800, 2000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-11', 281, 2, 83, 800, 1000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-11', 444, 5, 23, 4000, 2000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-11', 39, 4, 100, 4100, 3000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-11', 984, 2, 100, 4000, 2500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-11', 321, 3, 93, 1500, 500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-11', 955, 3, 68, 4100, 3000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-11', 483, 5, 71, 2900, 1000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-12', 122, 3, 3, 3200, 2500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-12', 346, 4, 15, 2800, 1000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-12', 957, 6, 79, 1700, 2000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-12', 590, 4, 35, 4000, 3000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-12', 970, 4, 63, 3400, 2000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-12', 565, 3, 62, 1100, 1000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-12', 310, 2, 84, 3900, 2000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-12', 321, 4, 12, 3500, 3000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-13', 304, 4, 6, 1500, 1500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-13', 298, 6, 3, 2900, 2000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-13', 55, 4, 60, 2800, 3000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-13', 929, 1, 38, 2200, 1000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-13', 203, 4, 18, 3700, 4000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-13', 522, 4, 25, 3500, 2000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-13', 299, 5, 31, 2600, 2500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-13', 886, 4, 5, 3400, 1500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-13', 166, 6, 64, 1900, 500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-13', 526, 2, 60, 4100, 3500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-13', 681, 2, 44, 600, 500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-13', 386, 5, 48, 4900, 4000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-13', 143, 4, 56, 1300, 500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-13', 887, 3, 34, 700, 1000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-14', 498, 2, 58, 4000, 4000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-14', 69, 2, 96, 2700, 3000, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-14', 587, 3, 64, 3200, 3000, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-14', 582, 2, 11, 3500, 2000, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-14', 187, 2, 87, 700, 500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-14', 202, 6, 32, 3100, 1500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-15', 374, 2, 13, 1300, 1000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-15', 561, 5, 5, 3200, 2500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-15', 913, 4, 68, 3300, 3000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-15', 455, 4, 57, 3900, 3500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-15', 325, 4, 58, 4300, 3500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-15', 190, 2, 90, 3000, 1500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-15', 757, 1, 88, 1000, 500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-15', 216, 1, 98, 1700, 1000, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-15', 353, 6, 100, 4200, 2500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-15', 27, 4, 43, 3600, 3500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-15', 850, 2, 69, 4700, 3500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-15', 159, 5, 24, 1500, 1500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-16', 280, 4, 25, 2300, 2000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-16', 622, 3, 51, 2800, 1000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-16', 218, 6, 61, 2200, 2500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-16', 468, 5, 59, 1400, 500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-16', 787, 3, 28, 3800, 2000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-16', 124, 3, 23, 4900, 3500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-17', 761, 5, 46, 3000, 1000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-17', 896, 4, 63, 2500, 500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-17', 183, 2, 97, 1200, 500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-17', 807, 6, 61, 3600, 3500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-17', 954, 1, 68, 1700, 2000, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-17', 652, 6, 94, 900, 500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-17', 505, 1, 65, 2800, 2000, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-17', 285, 3, 47, 2200, 500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-18', 461, 2, 16, 4000, 2000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-18', 964, 3, 88, 3600, 2000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-18', 401, 3, 92, 200, 500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-18', 616, 3, 73, 2700, 3000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-19', 140, 3, 19, 3700, 3500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-19', 187, 6, 84, 3600, 3000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-19', 734, 5, 41, 2200, 2500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-19', 762, 3, 98, 3100, 2000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-19', 76, 5, 40, 3400, 2500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-19', 247, 4, 100, 2400, 500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-19', 526, 2, 69, 2200, 1500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-19', 678, 5, 74, 1500, 500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-19', 520, 3, 30, 4800, 4000, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-19', 430, 5, 21, 4300, 3500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-19', 57, 5, 8, 3900, 3000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-19', 829, 5, 64, 3200, 3000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-20', 154, 4, 45, 4600, 3500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-20', 759, 1, 19, 2100, 1500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-20', 15, 5, 7, 3100, 2000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-20', 747, 5, 4, 1700, 1500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-20', 585, 3, 55, 2400, 2000, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-20', 657, 6, 51, 3800, 2500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-20', 628, 6, 5, 4100, 3500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-20', 625, 3, 4, 4300, 4000, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-21', 304, 1, 82, 3900, 4000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-21', 669, 1, 27, 1400, 1500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-21', 367, 3, 70, 4800, 3500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-21', 157, 1, 45, 1600, 1000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-21', 650, 6, 51, 2900, 1000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-21', 701, 5, 24, 3300, 3500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-22', 323, 4, 92, 1300, 1000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-22', 24, 3, 87, 3200, 3000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-22', 659, 3, 5, 700, 500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-22', 438, 4, 68, 2300, 500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-22', 795, 1, 84, 2300, 2000, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-22', 167, 6, 15, 2600, 1000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-22', 949, 1, 79, 3700, 4000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-22', 236, 1, 100, 4700, 4000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-23', 632, 2, 91, 4500, 3500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-23', 593, 1, 70, 4700, 3500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-23', 9, 4, 89, 1200, 1000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-23', 784, 6, 55, 3800, 3000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-23', 694, 5, 78, 1900, 1500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-23', 579, 4, 84, 1400, 500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-23', 908, 1, 85, 2200, 1500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-23', 977, 6, 36, 2100, 500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-23', 82, 1, 99, 2900, 2000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-24', 305, 3, 58, 3200, 1500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-24', 546, 3, 59, 3400, 3000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-24', 275, 3, 32, 4200, 3500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-24', 726, 6, 97, 2800, 3000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-24', 740, 1, 83, 3900, 3500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-24', 585, 6, 73, 2100, 2000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-25', 447, 1, 94, 2200, 2500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-25', 125, 5, 9, 5000, 3000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-25', 68, 5, 79, 4500, 2500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-25', 831, 4, 46, 2900, 1000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-25', 716, 6, 75, 5900, 4000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-25', 703, 1, 94, 3400, 2500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-25', 822, 5, 32, 2300, 1500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-25', 509, 5, 31, 5500, 3500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-25', 577, 4, 82, 5100, 4000, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-25', 750, 4, 57, 3000, 2000, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-25', 880, 2, 23, 2900, 2500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-25', 334, 5, 83, 2300, 2000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-26', 155, 1, 7, 2000, 500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-26', 880, 3, 27, 4100, 3500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-26', 520, 6, 47, 4300, 2500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-26', 594, 3, 11, 3400, 1500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-27', 111, 4, 99, 1300, 1000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-27', 260, 2, 90, 1500, 1000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-27', 931, 4, 28, 4300, 3500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-27', 736, 3, 64, 2500, 1500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-27', 188, 3, 76, 1600, 1500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-27', 612, 4, 40, 2200, 1000, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-27', 53, 5, 64, 3100, 2500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-27', 288, 6, 100, 1400, 500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-27', 52, 5, 23, 200, 500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-27', 519, 1, 57, 3400, 3500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-27', 186, 6, 39, 2900, 2500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-27', 38, 6, 8, 1400, 1500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-27', 355, 2, 85, 2400, 1000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-27', 750, 3, 17, 1000, 1000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-28', 336, 1, 13, 5700, 4000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-28', 408, 6, 82, 3400, 1500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-28', 301, 4, 23, 2800, 3000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-28', 131, 2, 78, 4900, 3500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-28', 587, 6, 15, 4600, 3500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-28', 375, 5, 63, 1300, 500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-29', 773, 5, 22, 3000, 1500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-29', 938, 1, 6, 4000, 2000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-29', 439, 4, 95, 2300, 1000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-29', 569, 2, 57, 3600, 2000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-29', 944, 3, 95, 2400, 2500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-29', 687, 2, 75, 2400, 1500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-29', 765, 3, 91, 5000, 3500, 'East Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-29', 926, 3, 95, 3400, 3500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-29', 987, 6, 96, 600, 500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-29', 179, 2, 25, 3600, 3000, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-29', 651, 1, 79, 1200, 1500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-30', 95, 1, 81, 5000, 3000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-30', 911, 4, 52, 3600, 3500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-30', 582, 5, 27, 4000, 3000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-30', 322, 2, 83, 3800, 4000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-30', 204, 5, 81, 3000, 1000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-30', 194, 6, 32, 500, 500, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-30', 505, 5, 49, 5400, 3500, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-30', 346, 2, 97, 3100, 3000, 'Banten');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-31', 33, 5, 25, 1600, 500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-31', 729, 5, 2, 4600, 3000, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-31', 47, 5, 41, 1700, 500, 'Jakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-31', 633, 1, 40, 4800, 3000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-31', 286, 6, 3, 3800, 2000, 'West Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-31', 826, 3, 44, 5300, 4000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-31', 376, 3, 79, 4300, 3000, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-31', 770, 4, 79, 3400, 3500, 'Central Java');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-31', 595, 5, 27, 1900, 1000, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-31', 15, 3, 74, 1700, 1500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-31', 641, 5, 29, 2200, 1500, 'Yogyakarta');
insert into orders (date, user_id, product_id, no_units, sell_price, buy_price, region) values ('2022-01-31', 683, 1, 46, 3700, 2000, 'Banten');
