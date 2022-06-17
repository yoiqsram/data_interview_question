# Joining to Get Total Sales

## Question

Hi,

Suppose you have two tables, one called `orders`, and one called `revenue`, as shown below:

Table: `orders`

| order_id | channel | date | month |
| ---: | --- | --- | --- |
| 1 | Online | 2018-09-01 | September |
| 2 | Online | 2018-09-03 | September |
| 3 | In_store | 2018-10-11 | October |
| 4 | In_store | 2018-08-21 | August |
| 5 | Online | 2018-08-13 | August |
| 6 | Online | 2018-10-29 | October |

Table: `revenue`

| order_id | revenue |
| ---: | ---: |
| 1 | 100 |
| 2 | 125 |
| 3 | 200 |
| 4 | 80 |
| 5 | 200 |
| 6 | 100 |

Using SQL, write a query to show the total revenue by channel for the months of September and October.

*Source:* [interviewqs](interviewqs.com)


## Solution

Follow explanation below to understand the solution. See `solution.sql` for whole query in postgreSQL syntax.


## Explanation

The objective is to show the total revenue by channel for the months of September and October.

information of sales could be obtained from `orders` table that contains order (`order_id`), channel (`channel`), and order month (`month`). While revenue could be obtained from `revenue` table using `revenue` column. We could join those tables on `order_id` and filter the order in September and October, then aggregate revenue by channel.

```
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
```

We're done. To sum up, we used `where` to filter and aggregate function (`sum`) to get total revenue by channel.
