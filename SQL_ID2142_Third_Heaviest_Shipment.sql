/*

ID 2142 : Third Heaviest Shipment
    - You've been asked by Amazon to find the shipment_id and weight of the third heaviest shipment.
    - Output the shipment_id, and total_weight for that shipment_id.
    - In the event of a tie, do not skip ranks.
    
    Table : amazon_shipment
    
        shipment_date : date
        shipment_id   : bigint
        sub_id:       : bigint
        weight:       : bigint
*/


With weight as 
(
    select sum(weight)  total_weight , shipment_id ,
     DENSE_RANK() over( order by sum(weight) desc ) as dns
    from amazon_shipment
    group by shipment_id
)
select total_weight , shipment_id
from weight where dns = 3;