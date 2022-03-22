# Best Selling Products

## Question

Hi,

Suppose you’re an analyst for an e-commerce store. You’re trying to identify the top selling products in Q4 2017 by region, and you have 2 tables that you can query: 

---

Table: `all_products`

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

The solution is in `solution.sql`. It's in posgreSQL syntax.

### Explanation

The objective is to show top 5 product sold by region in Q4 of 2017. We want to show region, rank, product's name, product's distibutor ID, and total unit solds.

Information of sales could be obtained from `orders` table that contains sales date (`date`), product (`product_id`) and unit sold (`no_units`). While product's name and it's distributor ID could be obtained from `all_products` table.

We could join those tables on `product_id`.

We filter the data only for sales in Q4 of 2017.
