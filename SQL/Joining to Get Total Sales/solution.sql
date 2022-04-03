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
