/*
min , max , avg days take to process refund
filter on acccount date >= jan 1 2019
Process a Refund


Last Updated: August 2025

Medium
ID 2125

26

Calculate and display the minimum, average and the maximum number of days it takes to process a refund for accounts opened from January 1, 2019. Group by billing cycle in months.


Note: The time frame for a refund to be fully processed is from settled_at until refunded_at.

Tables
noom_signups
noom_transactions
noom_plans
*/
With refunddays as 
(
    SELECT  DATEDIFF(Day , settled_at , refunded_at)  as days , billing_cycle_in_months
    FROM noom_signups ns
    JOIN noom_transactions nt 
        ON ns.signup_id = nt.signup_id
    JOIN noom_plans np 
        ON np.plan_id = ns.plan_id
    WHERE ns.started_at >= '2019-01-01'
)
SELECT billing_cycle_in_months , MIN(days) as min_days , AVG(CAST(days as float)) as avg_days , MAX(days) as max_days
FROM refunddays 
GROUP BY billing_cycle_in_months