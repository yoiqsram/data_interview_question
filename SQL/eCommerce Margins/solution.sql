-- postgresql
-- if you have want to use dataset generated by `dataset.sql`,
-- make sure you're in the same schema

with sales_agg (
    select
        p.distributor_id
        , p.product_id
        , sum(o.no_units * o.sell_price) as revenue
        , sum(o.no_units * o.buy_price) as cost
        , sum(o.no_units) as unit_sold
    from
        orders o
        inner join products p on o.product_id = p.product_id
    group by
        p.distributor_id
        , p.product_id
)
select
    sales_agg.*
    , revenue - cost as total_net_margin
    , row_number(revenue) over (
        order by total_net_margin) as rank_revenue
    , row_number(revenue) over (
        order by total_net_margin) as rank_cost
    , row_number(revenue - cost) over (
        order by total_net_margin) as rank_total_net_margin
from sales_agg
order by rank_total_net_margin;
