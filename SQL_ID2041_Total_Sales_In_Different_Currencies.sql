/*

Medium
ID 2041 : Total Sales In Different Currencies



You work for a multinational company that wants to calculate total sales across all their countries they do business in.
You have 2 tables, one is a record of sales for all countries and currencies the company deals with, and the other holds currency exchange rate information.
Calculate the total sales, per quarter, for the first 2 quarters in 2020, and report the sales in USD currency.

Tables
sf_exchange_rate
sf_sales_amount

*/

With Sales As 
(
    select sa.sales_date ,	sa.sales_amount*exchange_rate AS total_sale	, sa.currency  , er.source_currency AS source , er.target_currency , er.exchange_rate
        , DATEPART(QUARTER, sa.sales_date)  AS  QUARTER  
    from sf_exchange_rate er 
    JOIN  sf_sales_amount sa ON sa.currency = er.source_currency AND DATEPART(MONTH, er.date) = DATEPART(MONTH, sa.sales_date)
AND DATEPART(YEAR, er.date) = DATEPART(YEAR, sa.sales_date)
    where YEAR(sa.sales_date) = 2020

)
SELECT QUARTER , SUM(total_sale) AS total_sales
from Sales
where QUARTER <=2
group By QUARTER;


