# Best Selling Products

## Question

Hi,

Suppose you’re an analyst for an e-commerce store. You’re trying to identify the top selling products in Q4 2017 by region, and you have 2 tables that you can query: 

---

Table: `products`

| Column Name | Data Type | Description |
| :--- | :---: | :--- |
| *product_id* | `integer` | id of the product |
| *product_name* | `string` | name of the product |
| *sku* | `integer` | universal stock keeping unit number |
| *distributor_id* | `integer` | id for distributor |

---

Table: `orders`

| Column Name | Data Type | Description |
| :--- | :---: | :--- |
| *date* | `string` | format is "YYYY-MM-DD" |
| *user_id* | `integer` | id of purchaser |
| *order_id* | `integer` | id of order number |
| *product_id* | `integer` | id of product
| *no_units* | `integer` | number of units sold in the order |
| *price* | `integer` | price per item |
| *shipping_id* | `integer` | id of shipment |
| *region* | `string` | region being shipped to |

---

Using the tables above, write a SQL query to find the top 5 selling products (in terms of total units sold) by region in Q4 of 2017. Include both the distributor id as well as the name of the product in your results.


## Solution

Follow explanation below to understand the solution. See `solution.sql` for whole query in posgreSQL syntax.

You could create the dataset by run `create_table.sql` first, then run `solution.sql`.


### Explanation

The objective is to show top 5 product sold by region in Q4 of 2017. We want to show period, region, rank, product's name, product's distibutor ID, and total unit solds.

Information of sales could be obtained from `orders` table that contains sales date (`date`), product (`product_id`) and unit sold (`no_units`). While product's name and it's distributor ID could be obtained from `products` table. We could join those tables on `product_id`, filter it to get sales in Q4 of 2017, and sum it's unit sold by region and product.

```
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
```

After that we want to rank those summary to get the top selling product by region. Let's put query above in CTE and add a rank column.

```
with sales_agg as (
    -- put previous query here
    ...
)
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
```

Now the aggregated data has a rank column partitioned by region. Because we only want to show the top 5, we need to filter it by rank.

```
with sales_agg as (...)
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
order by region, rank
```

We're done. To sum up, we used aggregate function (`sum`) to get total unit sold by product for each region and used window function (`row_number`) to rank total unit sold per region.
