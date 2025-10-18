/*
Total(prodct sold)
group by product 

performance based on the following criteria for items sold:
Outstanding: 30+
Satisfactory: 20 - 29
Unsatisfactory: 10 - 19
Poor: 1 - 9


Ad Performance Rating


Last Updated: October 2025

Medium
ID 2155


Following a recent advertising campaign, the marketing department wishes to classify its efforts based on the total number of units sold for each product.


You have been tasked with calculating the total number of units sold for each product and categorizing ad performance based on the following criteria for items sold:


Outstanding: 30+
Satisfactory: 20 - 29
Unsatisfactory: 10 - 19
Poor: 1 - 9


Your output should contain the product ID, total units sold in descending order, and its categorized ad performance.

Table
marketing_campaign
*/

With sales as 
(
    select product_id , SUM(quantity) as totalsale
    from marketing_campaign
    group by product_id
)
SELECT product_id , totalsale as unit_sold , case when totalsale >= 30 then 'Outstanding'
                when totalsale >= 20 AND totalsale <= 29  then 'Satisfactory'
                when  totalsale >= 10 AND totalsale <= 19  then 'Unsatisfactory'
                when  totalsale >= 1 AND totalsale <= 9  then 'Poor'
                end as performance
FROM sales
order by unit_sold desc;
