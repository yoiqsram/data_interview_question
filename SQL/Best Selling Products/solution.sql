-- postgresql
-- if you use dataset from `dataset.sql`,
-- make sure you're in the same schema

-- show the top 5 selling products (in terms of total unit sold)
-- by region in Q4 of 2017
with sales_agg as (
    select
        '2017 Q4' as period
        , o.region
        , p.product_name
        , p.distributor_id
        , sum(o.no_units) as unit_sold
    from
        orders o
        inner join products p on o.product_id = p.product_id
    where date between '2017-10-01' and '2017-12-31'
    group by o.region, p.product_name, p.distributor_id
)
select *
from (
    select
        period
        , region
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
