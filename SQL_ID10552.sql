/*

Identify Never-Sold Inventory Products

Easy
ID 10552

Identify the products that exist in the inventory but have never been sold. Return the product ID and product name for each unsold product.

Tables
sales_transactions
inventory_current_stock


*/

select IST.product_id , IST.product_name
from sales_transactions st 
RIGHT JOIN inventory_current_stock ist 
    ON ST. product_id = IST.product_id
WHERE ST.sale_id IS NULL OR quantity_sold = 0;
 