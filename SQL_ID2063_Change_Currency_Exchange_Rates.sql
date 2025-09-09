/*
Change of Currency Exchange Rates

Easy
ID 2063 : Change of Currency Exchange Rates


You are given a list of exchange rates from various currencies to US Dollars (USD) in different months. Show how the exchange rate of all the currencies changed in the first half of 2020. Output the currency code and the difference between values of the exchange rate between July 1, 2020 and January 1, 2020.

Table
sf_exchange_rate

date: date
exchange_rate: float
source_currency: varchar
target_currency: varcha
*/

select DISTINCT source_currency 
        , SUM((case when date= '2020-07-01' then exchange_rate else 0 end ) ) -
        SUM((case when date= '2020-01-01' then exchange_rate else 0 end )) As jan
from sf_exchange_rate
group by source_currency
order by source_currency;