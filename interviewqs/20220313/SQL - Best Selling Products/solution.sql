-- postgreSQL syntax

-- create table for products
create table if not exists all_products (
    product_id serial primary key
    , product_name varchar(100) not null
    , sku int not null
    , distributor_id int not null
);

-- create table for orders
create table if not exists orders (
    order_id serial primary key
    , date varchar(10)
    , user_id int
    , product_id int
    , no_units int
    , price int
    , shipping_id int
    , region varchar(50)
    , foreign key (product_id) references all_products (product_id)
);


-- show the top 5 selling products (in terms of total unit sold)
-- by region in Q4 of 2017
with sales_agg as (
    select
        o.region
        , p.product_name
        , p.distributor_id
        , sum(o.no_units) as unit_sold
    from
        orders o
        inner join all_products p on o.product_id = p.product_id
    where date between '2017-10-01' and '2017-12-31'
    group by o.region, p.product_name
)
select *
from (
    select
        region
        , row_number() over (
            partition by region
            order by unit_sold desc) as rank
        , product_name
        , distributor_id
        , unit_sold
    from sales_agg
    ) t
where rank <= 5
order by region, rank;