/*
Easy
ID 10362 : Top Monthly Sellers

You are provided with an already aggregated dataset from Amazon that contains detailed information about sales across different products and marketplaces. Your task is to list the top 3 sellers in each product category for January. In case of ties, rank them the same and include all sellers tied for that position.

The output should contain seller_id ,total_sales ,product_category , market_place, and sales_date.


*/

With topsaler as 
(
    select  seller_id ,total_sales ,product_category , market_place, sales_date,
            DENSE_RANK() over(Partition by product_category order by total_sales desc )  as Dnsrnk   
    from sales_data
    where Month(sales_date) = 1
)
SELECT seller_id ,total_sales ,product_category , market_place, sales_date
from topsaler
where dnsrnk <=3;