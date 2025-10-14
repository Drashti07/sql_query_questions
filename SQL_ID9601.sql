/*
Find The Best Day For Trading AAPL Stock


Last Updated: August 2025

Medium
ID 9601
SQL_ID9601


Find which calendar day of the month (e.g. the 6th, 17th, 25th, etc.) tends to be the best for trading AAPL stock across all months in the dataset. The best day is the one with highest positive difference between average closing price and average opening price. Output the result along with the average opening and closing prices.

*/

SELECT day_of_month , avg_open,avg_close
FROM (
    SELECT TOP 1
        DATEPART(DAY, [date]) AS day_of_month,
        AVG([open]) AS avg_open,
        AVG([close]) AS avg_close,
        AVG([close]) - AVG([open]) AS avg_gain
    FROM aapl_historical_stock_price
    GROUP BY DATEPART(DAY, [date])
    ORDER BY avg_gain DESC
)A