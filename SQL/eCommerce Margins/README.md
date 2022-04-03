# e-Commerce Margins

## Question

Hi, 

Suppose you're an analyst for an e-commerce store. You’re trying to identify the top selling items (by revenue) that have the highest margins. Using the tables below, can you write a SQL query that pulls the distributor, product_id, total revenue, total cost, total net margin, and number of units sold. Then, can you create additional columns that rank total net margin, total revenue, and total cost from greatest to least?

Table: `products`

| Column Name | Data Type | Description |
| :--- | :---: | :--- |
| *product_id* | `integer` | id of the product |
| *product_name* | `string` | name of the product |
| *sku* | `integer` | universal stock keeping unit number |
| *distributor_id* | `integer` | id for distributor |

Table: `orders`

| Column Name | Data Type | Description |
| :--- | :---: | :--- |
| *date* | `string` | format is "YYYY-MM-DD" |
| *user_id* | `integer` | id of purchaser |
| *order_id* | `integer` | id of order number |
| *product_id* | `integer` | id of product
| *no_units* | `integer` | number of units sold in the order |
| *sell_price* | `integer` | the price the item is sold at |
| *buy_price* | `integer` | the price to procure the item |
| *shipping_id* | `integer` | id of shipment |
| *region* | `string` | region being shipped to |


## Solution

Follow explanation below to understand the solution. See `solution.sql` for whole query in posgreSQL syntax.

You could create the dataset by run `create_table.sql` first, then run `solution.sql`.


### Explanation

The objective is to show to show distributor, product id, total revenue, total cost, total net margin, number of unit solds, rank total net margin, rank total revenue and rank total cost. Then rank the from greatest to least.

Information of sales could be obtained from `orders` table that contains product (`product_id`), selling price (`sell_price`), buying price (`buy_price`) and unit sold (`no_units`). While product's ID and it's distributor ID could be obtained from `products` table. We could join those tables on `product_id` and aggregate revenue & cost by product.

```
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
```

After that we want to calculate total net margin and create columns for revenue rank, cost rank, and total net margin rank. Let's put query above in CTE and add those rank columns.

```
with sales_agg as (
    -- put previous query here
    ...
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
order by rank_total_net_margin
```

Now the aggregated data has the rank columns. We could change the order by column to any rank column we want.

We're done. To sum up, we used aggregate function (`sum`) to get total unit sold by product and calculate revenue, cost, and total net margin then used window function (`row_number`) to rank columns.
