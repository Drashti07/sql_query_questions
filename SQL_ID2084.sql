/*

-- use hint  I missed condition that is user who are perminantly block asre also needs to include 
count(User_id) , userid , userblocked before but remain block for at leasr a part of december 
where block_date = DEC 2021
group by block_reason

*/

SELECT block_reason,
       count(DISTINCT user_id) AS n_users
FROM fb_blocked_users
WHERE (MONTH(block_date) = 12
       AND YEAR(block_date) = 2021)
  OR (block_date < '2021-12-01'
    AND 
  (block_duration IS NULL
          OR 
(datediff(DAY, block_date, '2021-12-01') <= block_duration)))
GROUP BY block_reason
