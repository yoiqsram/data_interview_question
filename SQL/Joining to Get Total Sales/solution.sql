-- postgresql
-- create new schema and set it as default
create schema ecommerce_margins;
set search_path to ecommerce_margins, "$user", public;

-- use two lines below to remove schema
-- drop schema ecommerce_margins cascade;
-- reset search_path;

-- Run all these to create tables and populate data

-- create table for orders
create table orders (
    order_id serial primary key
    , channel varchar(25)
    , date varchar(10)
    , month varchar(15)
);

-- create table for revenue
create table revenue (
    order_id int not null
    , revenue int not null
    , foreign key (order_id) references orders (order_id)
);


-- populate table orders with sample records
insert into orders (order_id, channel, date, month) values (1, 'Online', '2018-09-01', 'September');
insert into orders (order_id, channel, date, month) values (2, 'Online', '2018-09-03', 'September');
insert into orders (order_id, channel, date, month) values (3, 'In_store', '2018-10-11', 'October');
insert into orders (order_id, channel, date, month) values (4, 'In_store', '2018-08-21', 'August');
insert into orders (order_id, channel, date, month) values (5, 'Online', '2018-08-13', 'August');
insert into orders (order_id, channel, date, month) values (6, 'Online', '2018-10-29', 'October');

-- populate table orders with sample records
insert into revenue (order_id, revenue) values (1, 100);
insert into revenue (order_id, revenue) values (2, 125);
insert into revenue (order_id, revenue) values (3, 200);
insert into revenue (order_id, revenue) values (4, 80);
insert into revenue (order_id, revenue) values (5, 200);
insert into revenue (order_id, revenue) values (6, 100);


-- Solution
select
    o.channel,
    sum(r.revenue) as total_revenue
from
    orders o
    inner join revenue r on r.order_id = o.order_id
where
    date >= '2018-09-01'
    and date < '2018-11-01'
group by o.channel
order by total_revenue;
