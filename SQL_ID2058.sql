/*
Total Shipment Weight


Easy
ID 2058

Calculate the total weight for each shipment and add it as a new column. Your output needs to have all the existing rows and columns in addition to the  new column that shows the total weight for each shipment. One shipment can have multiple rows.

Table
amazon_shipment
*/
WITH CTE AS 
(
    select shipment_id , SUM(weight)  AS total_weight 
    from amazon_shipment
    GROUP BY shipment_id
)
SELECT A.shipment_id , A.sub_id , a.weight,a.shipment_date , c.total_weight
FROM amazon_shipment a
JOIN CTE C 
    ON A.shipment_id = C.shipment_id