/*
Premium Accounts


Last Updated: September 2025

Medium
ID 2097

You have a dataset that records daily active users for each premium account. A premium account appears in the data every day as long as it remains premium. However, some premium accounts may be temporarily discounted, meaning they are not actively paying — this is indicated by a final_price of 0.


For each of the first 7 available dates in the dataset, count the number of premium accounts that were actively paying on that day. Then, track how many of those same accounts are still premium and actively paying exactly 7 days later, based solely on their status on that 7th day (i.e., both dates must exist in the dataset). Accounts are only counted if they appear in the data on both dates.


Output three columns:
•   The date of initial calculation.
•   The number of premium accounts that were actively paying on that day.
•   The number of those accounts that remain premium and are still paying after 7 days.

*/

WITH premium_accounts AS (
    SELECT 
        entry_date,
        account_id,
        final_price
    FROM premium_accounts_by_day
    WHERE final_price > 0
)
SELECT
    a.entry_date,
    COUNT(DISTINCT a.account_id) AS premium_paid_accounts,
    COUNT(DISTINCT b.account_id) AS 
    premium_paid_accounts_after_7d
FROM premium_accounts a
LEFT JOIN premium_accounts b 
    ON a.account_id = b.account_id
   AND DATEDIFF(DAY, a.entry_date, b.entry_date) = 7
GROUP BY a.entry_date
ORDER BY a.entry_date
OFFSET 0 ROWS FETCH NEXT 7 ROWS ONLY;